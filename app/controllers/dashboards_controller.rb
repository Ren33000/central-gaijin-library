class DashboardsController < ApplicationController

  def profile
    @bookings = Booking.where(user_id: current_user.id)
    authorize @bookings
  end
end
