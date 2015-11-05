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

ActiveRecord::Schema.define(version: 20151103233058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_types_runewords", id: false, force: :cascade do |t|
    t.integer "runeword_id",  null: false
    t.integer "item_type_id", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "properties_runewords", id: false, force: :cascade do |t|
    t.integer "runeword_id", null: false
    t.integer "property_id", null: false
  end

  create_table "runes", force: :cascade do |t|
    t.string   "name"
    t.integer  "character_level"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "runes_runewords", id: false, force: :cascade do |t|
    t.integer "runeword_id", null: false
    t.integer "rune_id",     null: false
  end

  create_table "runewords", force: :cascade do |t|
    t.string   "name"
    t.integer  "character_level"
    t.boolean  "ladder_only"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
