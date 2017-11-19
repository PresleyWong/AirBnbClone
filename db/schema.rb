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

ActiveRecord::Schema.define(version: 20171110065954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.boolean  "air_conditiong",           default: false
    t.boolean  "cable_tv",                 default: false
    t.boolean  "carbon_monoxide_detector", default: false
    t.boolean  "dryer",                    default: false
    t.boolean  "elevator",                 default: false
    t.boolean  "essentials",               default: false
    t.boolean  "family_friendly",          default: false
    t.boolean  "first_aid_kit",            default: false
    t.boolean  "gym",                      default: false
    t.boolean  "handicap_accessible",      default: false
    t.boolean  "heating",                  default: false
    t.boolean  "hot_tub",                  default: false
    t.boolean  "indoor_fireplace",         default: false
    t.boolean  "internet",                 default: false
    t.boolean  "kitchen",                  default: false
    t.boolean  "pets_allowed",             default: false
    t.boolean  "pool",                     default: false
    t.boolean  "shampoo",                  default: false
    t.boolean  "smoke_detector",           default: false
    t.boolean  "smoking_allowed",          default: false
    t.boolean  "tv",                       default: false
    t.boolean  "washer",                   default: false
    t.boolean  "wireless_internet",        default: false
    t.integer  "place_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["place_id"], name: "index_amenities_on_place_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "num_guest"
    t.decimal  "total_price"
    t.date     "check_in_date"
    t.date     "check_out_date"
    t.boolean  "confirmation",   default: false
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["place_id"], name: "index_bookings_on_place_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "places", force: :cascade do |t|
    t.string   "listing_title"
    t.string   "listing_image"
    t.string   "description"
    t.string   "address"
    t.integer  "postcode"
    t.string   "city"
    t.string   "country"
    t.decimal  "price"
    t.integer  "max_guest"
    t.integer  "num_rooms"
    t.integer  "num_beds"
    t.integer  "num_baths"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "owner_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating",     default: 1, null: false
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["place_id"], name: "index_reviews_on_place_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "avatar"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "amenities", "places"
  add_foreign_key "bookings", "places"
  add_foreign_key "bookings", "users"
  add_foreign_key "reviews", "places"
  add_foreign_key "reviews", "users"
end
