require 'rails_helper'

RSpec.describe Restaurant do
  it { should have_many(:products) }
  
  context "testing total of products" do
    
    let(:restaurant) { FactoryBot.create(:restaurant) }
  
    before do
      5.times { FactoryBot.create(:product, restaurant: restaurant) }
    end
  
    it 'returns total of products for a specific restaurant' do
      # restaurant.products.each do |p| puts p.name end
      expect(restaurant.total_products).to eq 5
    end
    
  end
  
end
