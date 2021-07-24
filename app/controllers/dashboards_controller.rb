class DashboardsController < ApplicationController

  def profile
    @bookings = Booking.where(user_id: current_user.id).order(created_at: :desc)
    authorize @bookings
  end
end
