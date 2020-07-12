class Book < ActiveRecord::Base
  validates :title, presence: true

  has_many :author_books
  has_many :authors,  -> { uniq }, :through => :author_books
end
