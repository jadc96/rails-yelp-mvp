require_relative '../app/models/restaurant'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: Restaurant::CATEGORIES.sample
  )
  restaurant.save
  review = Review.new(
    restaurant_id: restaurant[:id],
    rating: rand(0..5),
    content: Faker::Lorem.paragraph
  )
  review.save
end
