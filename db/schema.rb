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

ActiveRecord::Schema.define(version: 20131229162046) do

  create_table "customers", force: true do |t|
    t.text     "comments"
    t.integer  "person_id"
    t.boolean  "deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.text     "comments"
    t.integer  "person_id"
    t.boolean  "deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "supplier_id"
    t.integer  "item_number"
    t.text     "description"
    t.decimal  "cost_price"
    t.decimal  "quantity"
    t.decimal  "reorder_level"
    t.boolean  "deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "phone"
    t.string   "email"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_items", force: true do |t|
    t.integer  "sale_id"
    t.integer  "item_id"
    t.string   "description"
    t.integer  "line"
    t.decimal  "quantity_purchased"
    t.decimal  "item_cost_price"
    t.decimal  "item_unit_price"
    t.decimal  "discount_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_payments", force: true do |t|
    t.integer  "sale_id"
    t.string   "payment_type"
    t.decimal  "payment_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "customer_id"
    t.integer  "employee"
    t.text     "comment"
    t.string   "payment_type"
    t.datetime "sale_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxes", force: true do |t|
    t.string   "name"
    t.decimal  "percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
