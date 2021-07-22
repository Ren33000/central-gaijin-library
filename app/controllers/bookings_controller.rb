class BookingsController < ApplicationController
  before_action :find_book, only: :new
  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.borrower_id = current_user.id
    @booking.save
    raise
    redirect_to books_path
  end


  private

  def booking_params
    params.require(:booking).permit(:status, :book_id, :start_date, :end_date, :borrower_id)

  end

  def find_book
    @book = Book.find(params[:book_id])
    authorize @book
  end

end
