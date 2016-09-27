class CuisinesController < ApplicationController
  def show
    @recipes = Recipe.find_by(cuisine_id = params[:id])
  end
end
