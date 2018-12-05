class AddPriceToDeals < ActiveRecord::Migration[5.2]
  def change
    add_monetize :deals, :price, currency: { present: false }
  end
end
