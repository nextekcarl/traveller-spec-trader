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

ActiveRecord::Schema.define(version: 20161010010315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "planets", force: :cascade do |t|
    t.integer  "subsector_id"
    t.string   "name",         null: false
    t.text     "description"
    t.text     "uwp",          null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "hex"
    t.index ["hex"], name: "index_planets_on_hex", using: :btree
    t.index ["subsector_id"], name: "index_planets_on_subsector_id", using: :btree
  end

  create_table "subsectors", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.text     "uwp",         null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "supplier_deals", force: :cascade do |t|
    t.text     "deals_table"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "morally_ambiguous", default: false
    t.integer  "planet_id"
    t.index ["planet_id"], name: "index_supplier_deals_on_planet_id", using: :btree
  end

  add_foreign_key "planets", "subsectors"
  add_foreign_key "supplier_deals", "planets"
end
