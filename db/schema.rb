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

ActiveRecord::Schema.define(version: 20160705223357) do

  create_table "meal_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "meal_id"
    t.string   "name"
    t.float    "quantity",      limit: 24
    t.string   "quantity_type"
    t.float    "calories",      limit: 24
    t.float    "protein",       limit: 24
    t.float    "fat",           limit: 24
    t.float    "carbs",         limit: 24
    t.float    "fiber",         limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["meal_id"], name: "index_meal_items_on_meal_id", using: :btree
  end

  create_table "meals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
