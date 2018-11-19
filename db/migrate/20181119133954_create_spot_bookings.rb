class CreateSpotBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_bookings do |t|
      t.references :spots
      t.references :users
      t.date :booking_date
      t.bool :is_approved

      t.timestamps
    end
  end
end
