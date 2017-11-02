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

ActiveRecord::Schema.define(version: 20171102015504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string   "iata_code"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "departure_datetime"
    t.datetime "arival_datetime"
    t.integer  "route_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "frequent_flyer_number"
    t.string   "gender"
    t.datetime "dob"
    t.string   "email"
    t.string   "telephone"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "flight_id"
    t.integer  "passenger_id"
    t.string   "seat_number"
    t.string   "travel_class"
    t.string   "confirmation_number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["confirmation_number"], name: "index_reservations_on_confirmation_number", unique: true, using: :btree
    t.index ["flight_id"], name: "index_reservations_on_flight_id", using: :btree
    t.index ["passenger_id"], name: "index_reservations_on_passenger_id", using: :btree
  end

  create_table "routes", force: :cascade do |t|
    t.integer  "arival_airport_id"
    t.integer  "departure_airport_id"
    t.integer  "base_price"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
