class CartedProductsController < ApplicationController

  def index 
    @carted_products = CartedProduct.where(user_id: current_user.id).where(status:'carted')

    render 'index.html.erb'
  end

  def create 
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      status: "carted",
      quantity: params[:quantity]
    )
    @carted_product.save

    flash[:success] = "This product has been added to the cart"

    redirect_to "/carted_products"      
  end  
  
  def destroy

    carted_product = CartedProduct.where(user_id: current_user.id).where(status:'carted').find_by(id: params[:id])

    carted_product.update(
      status: "removed"
    )

    redirect_to '/carted_products'
  end

end
