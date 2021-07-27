class ChangeBookingsStartDateFromDateToString < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :start_date, :string
  end
end
