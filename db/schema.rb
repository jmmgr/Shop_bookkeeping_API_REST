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

ActiveRecord::Schema.define(version: 20140426041005) do

  create_table "expenses", force: true do |t|
    t.date     "day_date"
    t.decimal  "amount",       precision: 12, scale: 2
    t.string   "name_expense"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "name_expenses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.date     "day_date"
    t.decimal  "amount",     precision: 12, scale: 2
    t.string   "provider"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "working_days", force: true do |t|
    t.date     "day_date"
    t.decimal  "sale",         precision: 12, scale: 2
    t.decimal  "cash",         precision: 12, scale: 2
    t.decimal  "change_coins", precision: 12, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
