class AddAmountCentsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :price_cents, :integer
  end
end
