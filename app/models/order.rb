class Order < ApplicationRecord
  belongs_to :user 
  has_many :carted_products

  def subtotal 
    subtotal = 0 
    carted_products.each do |carted_product|
      subtotal += (carted_product.product.price * carted_product.quantity)
    end
    return subtotal
  end

  def tax 
    tax = 0 
    carted_products.each do |carted_product|
      tax += (carted_product.product.price * 0.08) * carted_product.quantity
    end
    return tax
  end

end
