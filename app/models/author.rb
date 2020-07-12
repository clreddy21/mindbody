class Author < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true

  has_many :author_books
  has_many :books,  -> { uniq }, :through => :author_books
end
