class CreateCheckouts < ActiveRecord::Migration
  def change
    date_due = Time.now + (60 * 60 * 24 * 14)

    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.datetime :date_due, null: false, default: date_due
      t.string :reader_name, null: false
      t.datetime :date_returned

      t.timestamps
    end
  end
end
