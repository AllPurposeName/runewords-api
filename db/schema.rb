# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2015_11_05_222800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_types_runewords", id: false, force: :cascade do |t|
    t.integer "runeword_id", null: false
    t.integer "item_type_id", null: false
  end

  create_table "properties", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "group"
    t.string "category"
  end

  create_table "properties_runewords", id: false, force: :cascade do |t|
    t.integer "runeword_id", null: false
    t.integer "property_id", null: false
  end

  create_table "runes", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "character_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runes_runewords", id: false, force: :cascade do |t|
    t.integer "runeword_id", null: false
    t.integer "rune_id", null: false
  end

  create_table "runewords", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "character_level"
    t.boolean "ladder_only"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
