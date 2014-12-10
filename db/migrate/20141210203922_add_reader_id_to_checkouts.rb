class AddReaderIdToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :reader_id, :integer

    Checkout.all.each do |checkout|
      reader = Reader.find_by(full_name: checkout.reader_name)
      checkout.reader = reader
      checkout.save
      puts "Checkout #{checkout.id}'s reader added."
    end

    change_column_null :checkouts, :reader_id, false
  end
end
