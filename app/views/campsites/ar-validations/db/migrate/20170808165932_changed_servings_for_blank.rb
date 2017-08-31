class ChangedServingsForBlank < ActiveRecord::Migration[5.1]
  def change
    change_column :recipes, :servings, :integer, allow_blank: true
  end
end
