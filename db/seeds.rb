# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

10.times do |n|
  category = Category.find(rand(1..4))
  attrs = {
    title: "Green Eggs #{n}",
    author: "Dr. Seuss",
    call_number: "qwerty#{n}",
    isbn: "asdfghj#{n}",
    category: category,
  }
  Book.find_or_create_by(attrs)
end

reader_names = [
  "Maebe Funke",
  "Steve Holt",
  "Stan Sitwell",
  "Barry Zuckercorn",
  "Gene Parmesan"
]

20.times do |n|
  book = Book.find(rand(1..10))
  reader_name = reader_names[rand(reader_names.length - 1)]
  Checkout.create(book: book, reader_name: reader_name)
end
# STEP 8
# 1. Create my categorization model & table
# 2. Create categorizations for all the existing Book objects
# 3. Drop category_id from books table
# 4. Update the associations

# STEP 9 & 10 & 11
# 1. Create a readers table & model
# 2. Populate it - iterate over all Checkout objects
# & find or create a Reader object using that checkout's reader_name
# 3. Add reader_id column to our Checkout table
# 4. Populate the reader_id column
# 5. Delete the reader_name
# 6. Update the associations

# STEP 12
# 1. Add the first_name and last_name columns
# 2. Populate first_name and last_name columns
# 3. Drop the full_name column
