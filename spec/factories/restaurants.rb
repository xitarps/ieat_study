FactoryBot.define do
  factory :restaurant do
    sequence(:name) { |n| "restaurant_#{n}" }
    # address { 'St X' }
    sequence(:address) { |n| "Street_#{n}_#{Faker::Games::Pokemon.location.gsub(' ','_')}" }
  end
end
