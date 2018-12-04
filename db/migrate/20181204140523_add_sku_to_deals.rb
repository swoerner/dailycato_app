class AddSkuToDeals < ActiveRecord::Migration[5.2]
  def change
    t.string :sku
  end
end
