class ImagesController < ApplicationController

  def new
    @car = Product.find(params[:product_id])

    render 'new.html.erb'
  end

  def create 
    @car = Product.find(params[:product_id])


    @image = Image.create(
        url: params[:url],
        product_id: params[:product_id]
      )


    redirect_to "/products/#{@car.id}"
  end


end
