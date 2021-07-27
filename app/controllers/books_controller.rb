require 'open-uri'

class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_book, only: :show

  def index

    @categories = ["Kids", "Romance", "Sci-Fi and Fantasy", "Non-fiction", "Classics", "Comics", "Mystery and Crime"]
    @books = policy_scope(Book).order(created_at: :desc)
    @books_categories = {}
    @categories.each do |category|
      @books_categories[category] = policy_scope(Book).where(category: category )
    end
  end

  def category
    @books = Book.where(category: params[:category])
    authorize @books
  end

  def search
    if params[:query]
      @books = Book.search_by_title_and_author(params[:query])
    else
      @books = policy_scope(Book).order(title: :asc)
    end
    authorize @books

  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(api_input)
    authorize @book
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
      category: params[:book][:category],
      cover_picture: response["items"].first["volumeInfo"]["imageLinks"]["thumbnail"],
      description: response["items"].first["volumeInfo"]["description"],
      author: response["items"].first["volumeInfo"]["authors"]
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
