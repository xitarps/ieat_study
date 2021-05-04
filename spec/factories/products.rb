FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "product_#{n}_#{Faker::Games::Pokemon.move.gsub(' ','_')}" }
    value { rand(100) }
    restaurant
  end
end
