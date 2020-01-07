class Store < ApplicationRecord
  has_many :loads
  has_many :availabilities
end
