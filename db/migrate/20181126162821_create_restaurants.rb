class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.time :deal_hours
      t.string :phone_number
      t.string :price_category
      t.string :location
      t.integer :coordinates
      t.string :website_url
      t.string :logo_url
      t.string :photos
      t.boolean :disabled
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
