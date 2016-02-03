class Category < ActiveRecord::Base
  has_many :catergorized_products
  has_many :products, through: :catergorized_products
end
