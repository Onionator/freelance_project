require('pry')

class LandingController < ApplicationController
  def index
    @products = Product.three_newest
    binding.pry
    render :index
  end
end
