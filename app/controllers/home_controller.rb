class HomeController < ApplicationController
  def index
    @recipes = Recipe.order(created_at: :desc).first(20)
    @cuisines = Cuisine.all
  end

end
