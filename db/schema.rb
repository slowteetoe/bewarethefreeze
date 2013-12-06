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

ActiveRecord::Schema.define(version: 20131206174520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alert_subscriptions", force: true do |t|
    t.integer  "location_id"
    t.string   "email"
    t.boolean  "active"
    t.string   "sms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alert_subscriptions", ["email"], name: "index_alert_subscriptions_on_email", using: :btree
  add_index "alert_subscriptions", ["location_id"], name: "index_alert_subscriptions_on_location_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "zip"
    t.string   "city"
    t.string   "state"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["zip"], name: "index_locations_on_zip", using: :btree

end
