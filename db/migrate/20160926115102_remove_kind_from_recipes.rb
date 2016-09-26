class RemoveKindFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :kind, :string
  end
end
