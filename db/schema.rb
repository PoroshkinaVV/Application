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

ActiveRecord::Schema.define(version: 20160712093450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditories", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "floor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "auditories", ["floor_id"], name: "index_auditories_on_floor_id", using: :btree

  create_table "auditory_geometries", force: :cascade do |t|
    t.string   "a_coordinates", null: false
    t.integer  "auditory_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "auditory_geometries", ["auditory_id"], name: "index_auditory_geometries_on_auditory_id", using: :btree

  create_table "buildings", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computer_geometries", force: :cascade do |t|
    t.string   "c_coordinates", null: false
    t.integer  "front_point",   null: false
    t.integer  "computer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "computer_geometries", ["computer_id"], name: "index_computer_geometries_on_computer_id", using: :btree

  create_table "computers", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "desk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "computers", ["desk_id"], name: "index_computers_on_desk_id", using: :btree

  create_table "desk_geometries", force: :cascade do |t|
    t.string   "d_coordinates", null: false
    t.integer  "front_point",   null: false
    t.integer  "desk_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "desk_geometries", ["desk_id"], name: "index_desk_geometries_on_desk_id", using: :btree

  create_table "desks", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "auditory_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "desks", ["auditory_id"], name: "index_desks_on_auditory_id", using: :btree

  create_table "floor_geometries", force: :cascade do |t|
    t.string   "f_coordinates"
    t.integer  "floor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "floor_geometries", ["floor_id"], name: "index_floor_geometries_on_floor_id", using: :btree

  create_table "floors", force: :cascade do |t|
    t.integer  "number"
    t.integer  "building_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "floors", ["building_id"], name: "index_floors_on_building_id", using: :btree

  add_foreign_key "auditories", "floors"
  add_foreign_key "auditory_geometries", "auditories"
  add_foreign_key "computer_geometries", "computers"
  add_foreign_key "computers", "desks"
  add_foreign_key "desk_geometries", "desks"
  add_foreign_key "desks", "auditories"
  add_foreign_key "floor_geometries", "floors"
  add_foreign_key "floors", "buildings"
end
