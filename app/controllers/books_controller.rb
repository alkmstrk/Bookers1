class BooksController < ApplicationController
  def top
  end

  def index
  	@books = Book.all
  	@book = Book.new
  end


  def show
  	@book = Book.find(params[:id])
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	flash[:notice] = "Book was successfully created."
  	redirect_to show_path(book.id)
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "Book was successfully updated."
  	redirect_to show_path(book.id)
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	flash[:notice] = "Book was successfully destroyed."
  	redirect_to index_path
  end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
