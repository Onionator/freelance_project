Product.destroy_all
Review.destroy_all

25.times do
  product = Product.create!(
    :name => Faker::Dessert.variety,
    :cost => rand(1.5...20).round(2),
    :country_of_origin => Faker::Address.country
  )
  rand(3...13).times do
    product.reviews.create!(
      :author => Faker::TvShows::Simpsons.character,
      :content_body => Faker::TvShows::Simpsons.quote,
      :rating => rand(1...5)
    )
  end
end
