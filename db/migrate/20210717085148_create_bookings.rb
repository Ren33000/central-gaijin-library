class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :start_date
      t.date :end_date
      t.references :borrower, foreign_key: { to_table: :users }
      t.references :book, foreign_key: { to_table: :books }

      t.timestamps
    end
  end
end
