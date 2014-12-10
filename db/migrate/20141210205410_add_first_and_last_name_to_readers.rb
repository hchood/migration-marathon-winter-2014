class AddFirstAndLastNameToReaders < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.all.each do |reader|
      names = reader.full_name.split(" ")

      reader.first_name = names[0...-1].join(" ")
      reader.last_name = names[-1]
      if reader.save
        puts "#{reader.first_name} #{reader.last_name} saved."
      else
        puts "Failed to save #{reader.full_name}."
      end
    end

    change_column_null :readers, :first_name, false
    change_column_null :readers, :last_name, false
  end
end
