class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  
  has_many :category_products
  has_many :categories, through: :category_products

  has_many :carted_products

  has_many :orders


end
