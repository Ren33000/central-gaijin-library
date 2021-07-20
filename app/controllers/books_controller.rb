require 'open-uri'

class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_book, only: :show

  def index
    @books = policy_scope(Book).order(created_at: :desc)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(api_input)
    @book.user = current_user
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def show; end

  private

  def api_input
    url = "https://www.googleapis.com/books/v1/volumes?q=isbn:#{params[:book][:ISBN]}"
    response = JSON.parse(URI.open(url).read)
    {
      title: response["items"].first["volumeInfo"]["title"],
      ISBN: params[:book][:ISBN],
      cover_picture: response["items"].first["volumeInfo"]["imageLinks"]["thumbnail"]
    }
  end

  def find_book
    @book = Book.find(params[:id])
    authorize @book
  end

  # def book_params
  #   params.require(:book).permit(:title, :category, :description, :ISBN, :cover_picture)
  # end
end
