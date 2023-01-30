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

ActiveRecord::Schema[7.0].define(version: 2023_01_30_103038) do
  create_table "attendances", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.integer "play_session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["play_session_id"], name: "index_attendances_on_play_session_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "collections", force: :cascade do |t|
    t.integer "game_id"
    t.float "weight"
    t.float "rating"
    t.integer "min_players"
    t.integer "max_players"
    t.integer "rec_min_players"
    t.integer "rec_max_players"
    t.string "image"
    t.integer "venue_id", null: false
    t.boolean "venue_owned"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
    t.index ["venue_id"], name: "index_collections_on_venue_id"
  end

  create_table "event_settings", force: :cascade do |t|
    t.integer "min_per_group"
    t.integer "max_per_group"
    t.boolean "use_rec_player_count"
    t.integer "max_game_length"
    t.integer "min_game_length"
    t.integer "max_weight"
    t.integer "min_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "group_id", null: false
    t.integer "venue_id", null: false
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "event_settings_id", null: false
    t.integer "play_session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_settings_id"], name: "index_events_on_event_settings_id"
    t.index ["group_id"], name: "index_events_on_group_id"
    t.index ["play_session_id"], name: "index_events_on_play_session_id"
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.boolean "private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "locations", force: :cascade do |t|
    t.string "street_address"
    t.string "city"
    t.string "region"
    t.string "country"
    t.string "code"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_memberships_on_group_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "play_sessions", force: :cascade do |t|
    t.integer "collection_id", null: false
    t.integer "slot_number"
    t.integer "max_slots"
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_play_sessions_on_collection_id"
    t.index ["event_id"], name: "index_play_sessions_on_event_id"
    t.index ["user_id"], name: "index_play_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.integer "capacity"
    t.integer "location_id", null: false
    t.boolean "private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_venues_on_location_id"
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "play_sessions"
  add_foreign_key "attendances", "users"
  add_foreign_key "collections", "users"
  add_foreign_key "collections", "venues"
  add_foreign_key "events", "event_settings", column: "event_settings_id"
  add_foreign_key "events", "groups"
  add_foreign_key "events", "play_sessions"
  add_foreign_key "events", "venues"
  add_foreign_key "memberships", "groups"
  add_foreign_key "memberships", "users"
  add_foreign_key "play_sessions", "collections"
  add_foreign_key "play_sessions", "events"
  add_foreign_key "play_sessions", "users"
  add_foreign_key "venues", "locations"
end
