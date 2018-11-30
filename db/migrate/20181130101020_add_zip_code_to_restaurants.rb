class AddZipCodeToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :zip_code, :integer
  end
end
