class RemoveQuantityFromDeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :deals, :quantity, :integer
  end
end
