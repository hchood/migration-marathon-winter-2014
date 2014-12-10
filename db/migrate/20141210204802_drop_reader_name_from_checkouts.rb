class DropReaderNameFromCheckouts < ActiveRecord::Migration
  def change
    remove_column :checkouts, :reader_name, :string, null: false, default: "N/A"
  end
end
