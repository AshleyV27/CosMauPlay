class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :starting_date
      t.date :ending_date

      t.timestamps
    end
  end
end
