class AddNameToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :name, :string
  end
end
