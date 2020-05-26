ActionView::Template.class_eval do
  alias_method :initialize_without_deface, :initialize

  def initialize(source, identifier, handler, details)
    syntax = determine_syntax(handler)

    if Rails.application.config.deface.enabled && should_be_defaced?(syntax)

      processed_source = Deface::Override.apply(source.to_param, details, true, syntax)

      # force change in handler before continuing to original Rails method
      # as we've just converted some other template language into ERB!
      #
      if [:slim, :haml].include?(syntax) && processed_source != source.to_param
        handler = ActionView::Template::Handlers::ERB
      end
    else
      processed_source = source.to_param
    end

    initialize_without_deface(processed_source, identifier, handler, details)
  end

  alias_method :render_without_deface, :render

  # refresh view to get source again if
  # view needs to be recompiled
  #
  def render(view, locals, buffer=nil, &block)

    if Gem.loaded_specs["rails"].version < Gem::Version.new("6.0.0.beta1") && view.is_a?(ActionView::CompiledTemplates)
      mod = ActionView::CompiledTemplates
    elsif Gem.loaded_specs["rails"].version >= Gem::Version.new("6.0.0.beta1")  && view.is_a?(ActionDispatch::DebugView)
      mod = ActionDispatch::DebugView
    else
      mod = view.singleton_class
    end

    if @compiled && !mod.instance_methods.map(&:to_s).include?(method_name)
      @compiled = false
      @source = refresh(view).source
    end
    render_without_deface(view, locals, buffer, &block)
  end

  protected

    alias_method :method_name_without_deface, :method_name

    # inject deface hash into compiled view method name
    # used to determine if recompilation is needed
    #
    def method_name
      deface_hash = Deface::Override.digest(:virtual_path => @virtual_path)

      #we digest the whole method name as if it gets too long there's problems
      "_#{Deface::Digest.hexdigest("#{deface_hash}_#{method_name_without_deface}")}"
    end

  private

    def should_be_defaced?(syntax)
      syntax != :unknown
    end

    def determine_syntax(handler)
      if handler.to_s == "Haml::Plugin"
        :haml
      elsif handler.class.to_s == "Slim::RailsTemplate"
        :slim
      elsif handler.to_s.demodulize == "ERB" || handler.class.to_s.demodulize == "ERB"
        :erb
      else
        :unknown
      end
    end
end

# Rails 6 fix
# https://github.com/rails/rails/commit/ec5c946138f63dc975341d6521587adc74f6b441
# https://github.com/rails/rails/commit/ccfa01c36e79013881ffdb7ebe397cec733d15b2#diff-dfb6e0314ad9639bab460ea64871aa47R27
if defined?( ActionView::Template::Handlers::ERB::Erubi)
  ActionView::Template::Handlers::ERB::Erubi.class_eval do
    def initialize(input, properties = {})
      @newline_pending = 0

      # Dup properties so that we don't modify argument
      properties = Hash[properties]
      properties[:preamble]   = "@output_buffer = output_buffer || ActionView::OutputBuffer.new;"
      properties[:postamble]  = "@output_buffer.to_s"
      properties[:bufvar]     = "@output_buffer"
      properties[:escapefunc] = ""

      super
    end
  end
end

#fix for Rails 3.1 not setting virutal_path anymore (BOO!)
if defined?(ActionView::Resolver::Path)
  ActionView::Resolver::Path.class_eval { alias_method :virtual, :to_s }
end
