class RemovePriceCategoryFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :price_category
  end
end
