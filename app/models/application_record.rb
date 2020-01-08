class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  Stripe.api_key = ENV['STRIPE_SECRET_KEY']
end
