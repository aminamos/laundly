class Load < ApplicationRecord
  belongs_to :store
  belongs_to :user
  def invoice
    Stripe::Invoice.retrieve(
      byebug
      # @load.invoice_id
    )
  end
end
