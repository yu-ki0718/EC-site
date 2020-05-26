# frozen_string_literal: true

# Merges users orders to their account after sign in and sign up.
Warden::Manager.after_set_user except: :fetch do |user, auth, _opts|
  if auth.cookies.signed[:guest_token].present?
    if user.is_a?(Spree::User)
      Spree::Order.incomplete.where(guest_token: auth.cookies.signed[:guest_token], user_id: nil).each do |order|
        order.associate_user!(user)
      end
    end
  end
end

Warden::Manager.before_logout do |_user, auth, _opts|
  auth.cookies.delete :guest_token
end
