class AddServingsToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :servings, :decimal
  end
end
