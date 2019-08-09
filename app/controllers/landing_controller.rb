class LandingController < ApplicationController
  def index
    @products = Product.three_newest
    @most_reviewed_product = Product.most_reviews
    render :index
  end
end
