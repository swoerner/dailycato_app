class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :review_user_id
      t.string :image_url
      t.string :review_description
      t.string :time_created
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
