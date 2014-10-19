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

ActiveRecord::Schema.define(version: 20141019192057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_photos", force: true do |t|
    t.integer "car_id",  null: false
    t.string  "car_pic", null: false
  end

  create_table "car_reviews", force: true do |t|
    t.integer "car_id",  null: false
    t.float   "rating"
    t.string  "title"
    t.text    "comment"
  end

  create_table "cars", force: true do |t|
    t.string   "brand",         null: false
    t.string   "model",         null: false
    t.string   "nicename",      null: false
    t.integer  "year",          null: false
    t.integer  "style_id",      null: false
    t.string   "fuel_type",     null: false
    t.integer  "price",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fuel_capacity", null: false
    t.integer  "mpg",           null: false
  end

  create_table "costs", force: true do |t|
    t.integer  "car_id",                null: false
    t.integer  "down_payment",          null: false
    t.float    "interest_rate",         null: false
    t.integer  "time_horizon_in_years", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",               null: false
  end

  create_table "maintenances", force: true do |t|
    t.integer "car_id",           null: false
    t.integer "maintenance_id",   null: false
    t.float   "interval_mileage"
    t.float   "interval_months"
    t.integer "frequency",        null: false
    t.float   "labor_units"
    t.float   "part_units"
    t.float   "cost_per_unit"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zipcode",                             null: false
    t.integer  "labor_cost_per_hour"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
