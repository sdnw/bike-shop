class User < ApplicationRecord
  has_many :purchases
  has_many :bikes, through: :purchases
end
