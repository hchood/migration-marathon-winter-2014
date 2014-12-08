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

ActiveRecord::Schema.define(version: 20141208145840) do

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
  end

  add_index "books", ["call_number"], name: "index_books_on_call_number", unique: true, using: :btree
  add_index "books", ["isbn"], name: "index_books_on_isbn", unique: true, using: :btree

end
