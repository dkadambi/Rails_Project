class ProductsController < ApplicationController
  
  # This loads the view of the same name after the action has executed
  # This view will have access to the @products variable
  def index
    @products = Product.all
  end

  #this loads the app/views/products/show.html.erb
  def show
    @product = Product.find(params[:id])
  end

  #this loads the app/views/products/new.html.erb
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: :index
    else
      render :new
    end
    
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
    def product_params
      params.require(:product).permit(:name, :price, :stock_quantity, :image_name)
    end
end
