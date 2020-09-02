# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all

5.times do
    restaurant = Restaurant.new(
       name: ['Restaurant1', 'Restaurant2', 'Restaurant3'].sample,
       phone_number: ['123456789', '0987654321', '234567853'].sample,
       address: ['Melbourne', 'Taipei', 'Kyoto'].sample,
       category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
    restaurant.save!

    review = Review.new(
        restaurant: restaurant,
        content: ['great', 'good', 'soso', 'bad'].sample,
        rating: rand(0..5)
    )
    review.save!
end

puts "Finished!"

