class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @levels = ['Fácil', 'Médio', 'Difícil']
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

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine, :kind, :serves,:time,
                                   :ingredients, :level, :steps)
  end
end