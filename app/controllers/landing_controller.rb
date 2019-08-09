class LandingController < ApplicationController
  def index
    @products = Product.three_newest
    render :index
  end
end
