Product.destroy_all
Review.destroy_all

50.times do
  product = Product.create!(
    :name => Faker::Food.dish,
    :cost => rand(1.5...20).round(2),
    :country_of_origin => Faker::Address.country
  )
  rand(3...13).times do
    product.reviews.create!(
      :author => Faker::TvShows::Simpsons.character,
      :content_body => Faker::TvShows::Simpsons.quote + " " + Faker::Lorem.paragraph,
      :rating => rand(1...5)
    )
  end
end
