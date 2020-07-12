class BooksController < ApplicationController

  before_action :book, only: [:update, :edit, :destroy]
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create!(book_params)
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book.update!(book_params)
    redirect_to books_path
  end

  def destroy
    @book.destroy!
    redirect_to books_path
  end

  def book
    @book =  Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, author_ids: [])
  end

end