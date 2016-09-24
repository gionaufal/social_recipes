class RemoveTypeFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :type, :string
  end
end
