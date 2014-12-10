class Book < ActiveRecord::Base
  belongs_to :category
  has_many :checkouts
end
