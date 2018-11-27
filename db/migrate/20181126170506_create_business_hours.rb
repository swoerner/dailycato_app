class CreateBusinessHours < ActiveRecord::Migration[5.2]
  def change
    create_table :business_hours do |t|
      t.time :open_time
      t.time :closed_time
      t.string :day
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
