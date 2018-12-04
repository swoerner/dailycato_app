class AddAmountCentsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :amount, :monetize
    t.monetize :amount, currency: { present: false }
  end
end
