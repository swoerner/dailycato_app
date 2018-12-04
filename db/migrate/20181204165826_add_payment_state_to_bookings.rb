class AddPaymentStateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :payment_state, :string

  end
end
