class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :type
      t.integer :serves
      t.string :level
      t.text :ingredients
      t.text :steps

      t.timestamps
    end
  end
end
