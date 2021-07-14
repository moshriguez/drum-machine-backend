# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_14_210344) do

  create_table "beat_pads", force: :cascade do |t|
    t.integer "pad_id", null: false
    t.integer "beat_id", null: false
    t.string "sequence"
    t.float "volume"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "panning"
    t.float "pitch"
    t.index ["beat_id"], name: "index_beat_pads_on_beat_id"
    t.index ["pad_id"], name: "index_beat_pads_on_pad_id"
  end

  create_table "beats", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "tempo"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_beats_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "beat_id", null: false
    t.integer "user_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["beat_id"], name: "index_comments_on_beat_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "pads", force: :cascade do |t|
    t.string "name"
    t.string "sample_file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sample_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "musical_influences"
    t.string "avatar"
  end

  add_foreign_key "beat_pads", "beats"
  add_foreign_key "beat_pads", "pads"
  add_foreign_key "beats", "users"
  add_foreign_key "comments", "beats"
  add_foreign_key "comments", "users"
end
