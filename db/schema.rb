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

ActiveRecord::Schema.define(version: 20200103140417) do

  create_table "editing_programs", force: :cascade do |t|
    t.string "name"
    t.string "vendor"
    t.boolean "open_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "edits", force: :cascade do |t|
    t.string "editor_name"
    t.integer "photo_id"
    t.integer "editing_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_edits", force: :cascade do |t|
    t.integer "edit_id"
    t.integer "photo_id"
    t.string "changes_made"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edit_id", "photo_id"], name: "index_photo_edits_on_edit_id_and_photo_id"
    t.index ["edit_id"], name: "index_photo_edits_on_edit_id"
    t.index ["photo_id"], name: "index_photo_edits_on_photo_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "profession"
    t.string "place_of_operation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.string "remote_url"
    t.text "description"
    t.text "copyright"
    t.datetime "taken_on"
    t.string "taken_in"
    t.integer "season_id"
    t.integer "photographer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 25
    t.string "last_name", limit: 50
    t.string "email", default: "", null: false
    t.string "username", limit: 25
    t.string "string"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
