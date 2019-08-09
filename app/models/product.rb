class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  scope :three_newest, -> { where(id: Product.last(3)) }
  scope :most_reviews, -> {
    products = Product.all
    temp_num = 0
    most_reviewed = nil
    products.each do |product|
      if product.reviews.length > temp_num
        temp_num = product.reviews.length
        most_reviewed = product
      end
    end
    p most_reviewed.id
    p most_reviewed.name
    p most_reviewed
    where(id: most_reviewed.id)
  }
  scope :made_in_usa, -> { where(country_of_origin: "USA") }
end
