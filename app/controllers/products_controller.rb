class ProductsController < ApplicationController
  def index
    @products = Product.all
    @usa_products = Product.made_in_usa
    render :index
  end
  def new
    @product = Product.new
    render :new
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "New product successfully added."
      redirect_to products_path
    else
      flash[:alert] = "You have failed to complete the form correctly."
      render :new
    end
  end
  def show
    @product = Product.find(params[:id])
  end
  def edit
    @product = Product.find(params[:id])
    render :edit
  end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
  private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end
end
