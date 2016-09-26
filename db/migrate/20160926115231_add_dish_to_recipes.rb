class AddDishToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :dish, foreign_key: true
  end
end
