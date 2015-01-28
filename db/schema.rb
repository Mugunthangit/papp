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

ActiveRecord::Schema.define(version: 20150128095905) do

  create_table "contributions", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "pran_no"
    t.string   "name"
    t.string   "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "home"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nlcs", force: :cascade do |t|
    t.integer  "nlc_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "unit_id"
    t.integer  "employee_id"
    t.integer  "contribution_id"
    t.integer  "cocontri"
    t.integer  "subcontri"
    t.date     "date"
    t.string   "remark"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer  "nlc_id"
    t.string   "unit_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
