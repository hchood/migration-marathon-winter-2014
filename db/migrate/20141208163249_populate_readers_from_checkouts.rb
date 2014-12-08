class PopulateReadersFromCheckouts < ActiveRecord::Migration
  def change
    # grab all the Checkout records
    # for each record, create a record in the readers table
    #  with that checkout's reader_name
    # Populate the reader_id column on my checkout record with that
    #  reader record's ID

    checkouts = Checkout.all

    checkouts.each do |checkout|
      reader = Reader.find_or_create_by(full_name: checkout.reader_name, email: "N/A", phone_number: "N/A")
      checkout.update_attribute(reader_id: reader.id)
      puts "Checkout #{checkout.id}'s reader, #{reader.full_name}, updated."
    end
  end
end
