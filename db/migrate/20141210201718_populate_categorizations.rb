class PopulateCategorizations < ActiveRecord::Migration
  def change
    Book.all.each do |book|
      Categorization.create(
        book: book,
        category: book.category
      )
      puts "Created categorization: #{book.title}, #{book.category.name}"
    end
  end
end
