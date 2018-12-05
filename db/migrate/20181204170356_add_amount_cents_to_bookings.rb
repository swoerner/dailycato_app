class AddAmountCentsToBookings < ActiveRecord::Migration[5.2]
  def change
    t.monetize :amount, currency: { present: false }
  end
end
