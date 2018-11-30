# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_30_135909) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "booking_type"
    t.time "booking_time"
    t.bigint "user_id"
    t.bigint "restaurant_id"
    t.bigint "deal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_bookings_on_deal_id"
    t.index ["restaurant_id"], name: "index_bookings_on_restaurant_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "business_hours", force: :cascade do |t|
    t.string "day"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "closed_time"
    t.string "open_time"
    t.index ["restaurant_id"], name: "index_business_hours_on_restaurant_id"
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "food_type"
    t.string "type_of_deal"
    t.integer "price"
    t.time "start_date"
    t.time "end_date"
    t.string "recurring"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_deals_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "cuisine"
    t.time "deal_hours"
    t.string "phone_number"
    t.string "location"
    t.integer "coordinates"
    t.string "website_url"
    t.string "logo_url"
    t.string "photos"
    t.boolean "disabled"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.integer "rating"
    t.integer "zip_code"
    t.integer "price_category"
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.integer "review_user_id"
    t.string "image_url"
    t.string "review_description"
    t.string "time_created"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "text"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "deal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_tags_on_deal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "is_owner"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "deals"
  add_foreign_key "bookings", "restaurants"
  add_foreign_key "bookings", "users"
  add_foreign_key "business_hours", "restaurants"
  add_foreign_key "deals", "restaurants"
  add_foreign_key "restaurants", "users"
  add_foreign_key "reviews", "restaurants"
  add_foreign_key "tags", "deals"
end
