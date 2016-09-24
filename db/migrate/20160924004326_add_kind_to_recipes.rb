class AddKindToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :kind, :string
  end
end
