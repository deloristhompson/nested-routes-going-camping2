class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |table|
      table.string :title, null: false
      add_index :recipes, :title, unique: true

      table.timestamps null: false
    end
  end
end
