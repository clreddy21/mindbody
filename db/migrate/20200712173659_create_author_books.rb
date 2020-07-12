class CreateAuthorBooks < ActiveRecord::Migration
  def change
    create_table :author_books do |t|
      t.references :author, index: true
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :author_books, :authors
    add_foreign_key :author_books, :books
  end
end
