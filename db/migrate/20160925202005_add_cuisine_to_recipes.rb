class AddCuisineToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :cuisine, foreign_key: true
  end
end
