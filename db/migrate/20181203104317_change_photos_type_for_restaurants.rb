class ChangePhotosTypeForRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :photos, :string
    add_column :restaurants, :photos, :string, array: true
  end
end
