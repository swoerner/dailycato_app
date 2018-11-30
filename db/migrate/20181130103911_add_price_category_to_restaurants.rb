class AddPriceCategoryToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :price_category, :integer
  end
end
