class HomeController < ApplicationController
  def index
    @recipes = Recipe.order(created_at: :desc).first(20)
  end

end
