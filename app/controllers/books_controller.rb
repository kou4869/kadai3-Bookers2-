class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path(params[:id])
    else
      render user_params(current_user)
    end
  end
  
  def index
    @books = Book.all
  end

  def show
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :Opinion)
  end
  
end
