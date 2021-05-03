require 'rails_helper'

RSpec.describe Restaurant do
  context "testing total of products" do
    it 'returns total of products for a specific restaurant' do
      restaurant = Restaurant.create( name: 'RestauranteTeste', address: 'rua de teste')
      restaurant.products.create(name: 'Torta de maçã', value: 5.5)
      restaurant.products.create(name: 'Torta de maçã', value: 5.5)

      expect(restaurant.total_products).to eq 2  
    end
  end
end
