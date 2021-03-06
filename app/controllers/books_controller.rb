class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path
    flash[:updatenotice] = "Book was successfully updated."
  end

  def books
    @book = Book.new
    @books = Book.all
  end

  def new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
    flash[:createnotice] = "Book was successfully created."
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
    flash[:destroynotice] = "Book was successfully destroyed."
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

  
end
