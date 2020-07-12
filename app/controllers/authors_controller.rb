class AuthorsController < ApplicationController

  before_action :author, only: [:update, :edit, :destroy]
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create!(author_params)
    redirect_to authors_path
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author.update!(author_params)
    redirect_to authors_path
  end

  def destroy
    @author.destroy!
    redirect_to authors_path
  end

  def author
    @author =  Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :dob)
  end

end