class DropFullNameFromReaders < ActiveRecord::Migration
  def change
    remove_column :readers, :full_name, :string, null: false, default: "N/A"
  end
end
