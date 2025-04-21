class Bike < ApplicationRecord
  has_many :purchases
  has_many :users, through: :purchases
  enum :category, [:bmx, :mountain, :electric]
end
