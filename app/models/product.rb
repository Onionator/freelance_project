class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  scope :three_newest, -> { where(timestamp: Product.last(3)) }
end
