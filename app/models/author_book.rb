class AuthorBook < ActiveRecord::Base
  validates_uniqueness_of :author_id, :scope => :book_id

  belongs_to :author
  belongs_to :book

end
