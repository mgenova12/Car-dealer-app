class ImagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @car = Product.find(params[:product_id])

    render 'new.html.erb'
  end

  def create 
    @car = Product.find(params[:product_id])


    @image = Image.new(
        url: params[:url],
        product_id: params[:product_id]
      )

    if @image.save
      flash[:success] = "Your image has been added"
      redirect_to "/products/#{@car.id}"
    else 
      flash[:danger] = "Please add an image"
      redirect_to "/products/#{@car.id}/images/new"
    end

  end


end
