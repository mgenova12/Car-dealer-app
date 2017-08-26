class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create 

    @carted_products = CartedProduct.where(user_id: current_user.id).where(status: 'carted')

    @order = Order.new(
      user_id: current_user.id,
    )

    @order.save

    @carted_products.update(
      status: 'ordered',
      order_id: @order.id
    )

    @order.update(
      subtotal: @order.subtotal,
      tax: @order.tax,
      total: (@order.subtotal + @order.tax)
      )

    @user = @order.user

    redirect_to "/orders/#{@order.id}"
  end

  def show 
    @order = Order.find_by(id: params[:id])

    render 'show.html.erb'
  end

end
