class RestaurantsController < ApplicationController
  respond_to :html

  def index
    @restaurants = Restaurant.where("description LIKE ?", "%#{Forgery::LoremIpsum.words(100).split.sample}%").limit(5000)
    respond_with @restaurants
  end
end
