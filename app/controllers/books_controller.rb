class BooksController < ApplicationController
  def show
  end

  def index
  end

  def books
  end

  def new
    @book = Book.new
  end
  
  def creat
    book = Book.new(book_params)
    book.save
    # リダイレクト先は後でshow詳細ページに変更する
    redirect_to books_path
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :category, :body)
  end
  
end
