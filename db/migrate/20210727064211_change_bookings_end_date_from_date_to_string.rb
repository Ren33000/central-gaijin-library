class ChangeBookingsEndDateFromDateToString < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :end_date, :string
  end
end
