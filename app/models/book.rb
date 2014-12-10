class Book < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :checkouts
  has_many :readers, through: :checkouts
end
