class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @levels = %w(Fácil Médio Difícil)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      flash[:error] = 'Preencha os campos obrigatórios'
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine_id, :kind, :serves, :time,
                                   :ingredients, :level, :steps)
  end
end
