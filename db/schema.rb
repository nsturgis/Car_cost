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

ActiveRecord::Schema.define(version: 20141007220531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: true do |t|
    t.integer  "brand_id",      null: false
    t.string   "brand",         null: false
    t.string   "model",         null: false
    t.string   "nicename",      null: false
    t.integer  "year",          null: false
    t.integer  "style_id",      null: false
    t.integer  "MPG",           null: false
    t.string   "fuel_type",     null: false
    t.integer  "price",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fuel_capacity", null: false
  end

  create_table "costs", force: true do |t|
    t.integer  "car_id",                null: false
    t.integer  "down_payment",          null: false
    t.float    "interest_rate",         null: false
    t.integer  "time_horizon_in_years", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
