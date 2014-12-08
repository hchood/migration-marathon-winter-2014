class Category < ActiveRecord::Base
  has_many :books
  has_many :categorizations
  has_many :categories, through: :categorizations
end
