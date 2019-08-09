class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  scope :three_newest, -> { where(id: Product.last(3)) }
end
