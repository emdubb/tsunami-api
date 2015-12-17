# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151216220802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "county"
    t.string   "twitter"
    t.string   "email"
    t.string   "website1"
    t.string   "website2"
    t.string   "website3"
    t.string   "mobile_app"
    t.string   "facebook"
    t.string   "station"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.string   "map_type"
    t.string   "map_url"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "flood_area_title"
    t.string   "flood_area_url"
    t.string   "naval_area_title"
    t.string   "naval_area_url"
    t.string   "evac_route_title"
    t.string   "evac_route_url"
    t.string   "closure_title"
    t.string   "closure_url"
    t.string   "railway_title"
    t.string   "railway_url"
    t.string   "biketrail_title"
    t.string   "biketrail_url"
    t.string   "beach_access_title"
    t.string   "beach_access_url"
    t.string   "refuge_title"
    t.string   "refuge_locations"
    t.string   "refuge_url"
    t.string   "evacuation_title"
    t.string   "evacuation_locations"
    t.string   "evacuation_url"
    t.string   "landmark_title"
    t.string   "landmark_url"
    t.string   "hospital_title"
    t.string   "hospital_locations"
    t.string   "hospital_url"
  end

  create_table "maps_users", id: false, force: :cascade do |t|
    t.integer "map_id"
    t.integer "user_id"
  end

  add_index "maps_users", ["map_id", "user_id"], name: "by_map_and_user", unique: true, using: :btree
  add_index "maps_users", ["map_id"], name: "index_maps_users_on_map_id", using: :btree
  add_index "maps_users", ["user_id"], name: "index_maps_users_on_user_id", using: :btree

  create_table "pins", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "coordinates"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "css_location"
    t.integer  "user_id"
    t.integer  "map_id"
  end

  add_index "pins", ["map_id"], name: "index_pins_on_map_id", using: :btree
  add_index "pins", ["user_id"], name: "index_pins_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "default_map"
    t.text     "emer_hospital"
    t.text     "emer_meeting_area"
    t.string   "emer_name1"
    t.string   "emer_phone1"
    t.string   "emer_name2"
    t.string   "emer_phone2"
    t.string   "emer_name3"
    t.string   "emer_phone3"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_foreign_key "pins", "maps"
  add_foreign_key "pins", "users"
end
