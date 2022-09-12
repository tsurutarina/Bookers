class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
    @book = Book.new

  end

  def create
    book = Book.new(params[:id])
    book.save
    redirect_to '/books/#[id]'
    flash[:notice] = "Book was successfully creted."
  end

  def show
  end

  def edit
  end

  def update
     flash[:notice] = "Book was successfully creted."
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
