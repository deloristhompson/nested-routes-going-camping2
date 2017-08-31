class ChangeServingsColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :recipes, :servings, :integer
  end
end
