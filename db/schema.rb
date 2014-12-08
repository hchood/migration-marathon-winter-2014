# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141208155419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.string   "title",                   null: false
    t.string   "call_number",             null: false
    t.string   "isbn",                    null: false
    t.text     "description"
    t.integer  "quantity",    default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
    t.integer  "category_id"
  end

  add_index "books", ["call_number"], name: "index_books_on_call_number", unique: true, using: :btree
  add_index "books", ["isbn"], name: "index_books_on_isbn", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true, using: :btree

  create_table "checkouts", force: true do |t|
    t.integer  "book_id",                                       null: false
    t.datetime "date_due",      default: '2014-12-22 15:37:09', null: false
    t.string   "reader_name",                                   null: false
    t.datetime "date_returned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
