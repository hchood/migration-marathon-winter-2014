class Book < ActiveRecord::Base
  has_many :checkouts
end
