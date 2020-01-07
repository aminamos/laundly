class ApplicationController < ActionController::Base
  Stripe.api_key = ENV['STRIPE_SECRET_KEY']
end
