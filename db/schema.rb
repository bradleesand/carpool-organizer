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

ActiveRecord::Schema.define(version: 20140313172934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "driverships", force: true do |t|
    t.integer  "seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participations", force: true do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
    t.string   "role_type"
  end

  add_index "participations", ["trip_id"], name: "index_participations_on_trip_id", using: :btree
  add_index "participations", ["user_id"], name: "index_participations_on_user_id", using: :btree

  create_table "passengerships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "driver_id"
  end

  create_table "trips", force: true do |t|
    t.datetime "arrival"
    t.boolean  "public"
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
