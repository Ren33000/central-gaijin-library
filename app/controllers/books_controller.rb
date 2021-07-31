require 'open-uri'

class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_book, only: :show

  def index
    @users = User.all
    @categories = ["Kids", "Romance", "Sci-Fi and Fantasy", "Non-fiction", "Classics", "Comics", "Mystery and Crime"]
    @books = policy_scope(Book).order(created_at: :desc)
    @books_categories = {}
    @categories.each do |category|
      @books_categories[category] = policy_scope(Book).where(category: category)
    end
    # @books_locations = {}
    # @books.each do |book|
    #   @books_locations[book] = policy_scope(Book).where(user: book.user)
    # end
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def category
    @books = Book.where(category: params[:category])
    authorize @books
  end

  def search
    if params[:query].present?
      @query = params[:query]
      @books = Book.search_by_title_and_author(params[:query])
    else
      @books = Book.all
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
    if @book.save && @book.present?
      redirect_to books_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    authorize @booking
    @user = @book.user
    @markers =
      [{
        lat: @user.latitude,
        lng: @user.longitude,
        info_window: render_to_string(partial: "info_window_show", locals: { book: @book })
        # info_window: render_to_string(partial: "info_window", locals: { user: user })

      }]
  end

  private

  def api_input
    url = "https://www.googleapis.com/books/v1/volumes?q=isbn:#{params[:book][:ISBN]}"
    response = JSON.parse(URI.open(url).read)
    return {ISBN: params[:book][:ISBN],
            category: params[:book][:category]} if response["items"].first["volumeInfo"]["imageLinks"].nil?
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
