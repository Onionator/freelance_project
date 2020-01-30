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
    puts 'show active'
    @product = Product.find(params[:id])
  end
  def edit
    puts 'edit active'
    @product = Product.find(params[:id])
    render :edit
  end
  def update
    puts 'update active'
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end
  end
  def destroy
    puts 'destoy method active'
    @product = Product.find(params[:id])
     if @product.destroy!
      puts 'tried to destroy'
      flash[:notice] = "Product deleted."
     else
      puts 'failed to destroy'
      flash[:notice] = "Failure to delete product."
     end
    redirect_to products_path
  end
  private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end
end
