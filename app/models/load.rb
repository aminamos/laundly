class Load < ApplicationRecord
  belongs_to :store
  belongs_to :user
  def invoice
  end
end
