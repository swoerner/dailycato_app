class AddAmountToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :amount, :integer
  end
end
