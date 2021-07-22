class ChangeBorrowerColumnNameinBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :borrower_id, :user_id
  end
end
