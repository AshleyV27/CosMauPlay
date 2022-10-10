class AddCosplayRefToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :cosplay, null: false, foreign_key: true
  end
end
