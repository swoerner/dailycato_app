class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :booking_type
      t.time :booking_time
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.references :deal, foreign_key: true
      t.monetize :amount, currency: { present: false }

      t.timestamps
    end
  end
end
