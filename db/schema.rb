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

ActiveRecord::Schema.define(version: 20160222224506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connections", force: :cascade do |t|
    t.integer  "week"
    t.float    "strength"
    t.integer  "project_id"
    t.integer  "stakeholder_id"
    t.integer  "acquaintance_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["acquaintance_id"], name: "index_connections_on_acquaintance_id", using: :btree
    t.index ["project_id"], name: "index_connections_on_project_id", using: :btree
    t.index ["stakeholder_id"], name: "index_connections_on_stakeholder_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "client"
    t.integer  "timeframe"
    t.string   "time_format"
    t.integer  "total_stakeholders"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "stakeholder_snapshots", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "stakeholder_id"
    t.integer  "week"
    t.float    "power"
    t.float    "support"
    t.float    "vital"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["project_id"], name: "index_stakeholder_snapshots_on_project_id", using: :btree
    t.index ["stakeholder_id"], name: "index_stakeholder_snapshots_on_stakeholder_id", using: :btree
    t.index ["week"], name: "index_stakeholder_snapshots_on_week", using: :btree
  end

  create_table "stakeholders", force: :cascade do |t|
    t.string   "name"
    t.text     "image"
    t.string   "organisation"
    t.string   "role"
    t.text     "tags",         default: [],              array: true
    t.text     "notes",        default: [],              array: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
