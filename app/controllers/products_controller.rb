class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user
      if params[:sorted] && params[:order]
        @cars = Product.order(params[:sorted] => params[:order])
        render 'index.html.erb'
      elsif params[:search_term]
        @cars = Product.where("name LIKE ?", "%#{params[:search_term]}%")
        render 'index.html.erb'
      elsif params[:category]
        @category = Category.find_by(name: params[:category])
        @cars = @category.products
      else 
        @cars = Product.all.order(:name)
        render 'index.html.erb'
      end
    else 
      redirect_to '/login'
    end
  end

  def show 
    if current_user
      if params[:id] == 'random'
        @car = Product.all.sample
        render 'show.html.erb'
      else 
        @car = Product.find(params[:id])
        render 'show.html.erb'
      end
    else 
      redirect_to '/login'
    end      

  end

  def new 
    if current_user
      @suppliers = Supplier.all
      render 'new.html.erb'
    else
      redirect_to '/login'
    end 

  end

  def create 
    @car = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
    
    if @car.save
      flash[:success] = "This product has been added"
      redirect_to "/products/#{@car.id}/images/new"
    else 
      redirect_to "/products/new"
      flash[:danger] = "Your missing a field"
    end

  end


  def edit 
    @car = Product.find(params[:id])

    render 'edit.html.erb'
  end

  def update
    @car = Product.find(params[:id])

    @car.update(
      name: params[:name],
      price: params[:price],
      description: params[:description]
      )

    flash[:warning] = "This product has been changed"

    redirect_to "/products/#{@car.id}"
  end

  def destroy
    @car = Product.find(params[:id])

    @car.destroy
    
    flash[:danger] = "#{@car.name} has been deleted"

    redirect_to "/products"
  end


end
