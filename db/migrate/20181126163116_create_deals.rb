class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.string :name
      t.text :description
      t.string :food_type
      t.string :type_of_deal
      t.integer :price
      t.time :start_date
      t.time :end_date
      t.string :recurring
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
