class BookingsController < ApplicationController
  before_action :find_book, only: [:new, :create]
  before_action :find_booking, only: [:destroy, :update]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.book = @book
    @booking.pending!
    authorize @booking
    if @booking.save
      redirect_to dashboards_path
    else
      render :new
    end
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to dashboards_path
    else
      render :update
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to dashboards_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :book_id, :start_date, :end_date, :user_id)
  end

  def find_book
    @book = Book.find(params[:book_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
