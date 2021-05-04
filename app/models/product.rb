class Product < ApplicationRecord
  has_many :orders
  belongs_to :restaurant

  validates :name, presence: true
end
