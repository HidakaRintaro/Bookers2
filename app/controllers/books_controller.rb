class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end
  def create
    book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice:'You have creatad book successfully.'
    else
      render :index
    end
  end
  def show
    
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to 
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
