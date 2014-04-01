class ProductsController < ApplicationController
  
  # This loads the view of the same name after the action has executed
  # This view will have access to the @products variable
  def index
    @products = Product.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
