class CreateSpotBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_bookings do |t|
      t.references :spot
      t.references :user
      t.date :booking_date
      t.boolean :is_approved

      t.timestamps
    end
  end
end
