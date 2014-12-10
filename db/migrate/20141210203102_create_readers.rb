class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :phone_number

      t.timestamps
    end

    add_index :readers, :email, unique: true

    Checkout.all.each do |checkout|
      reader = Reader.find_by(full_name: checkout.reader_name)
      if reader.nil?
        reader = Reader.create(
          full_name: checkout.reader_name,
          email: "N/A #{checkout.id}"
        )
        puts "#{reader.full_name} added."
      else
        puts "#{reader.full_name} already in database."
      end
    end
  end
end
