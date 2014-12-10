class DropCategoryIdFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :category_id, :integer
  end
end
