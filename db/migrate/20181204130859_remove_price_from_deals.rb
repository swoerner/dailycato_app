class RemovePriceFromDeals < ActiveRecord::Migration[5.2]
  def change
    remove_column(:deals, :price)
  end
end
