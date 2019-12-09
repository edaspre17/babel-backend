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

ActiveRecord::Schema.define(version: 2019_12_08_175511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "birthday"
    t.string "lang"
    t.string "hand"
    t.string "school"
    t.string "school_type"
    t.string "school_lvl"
    t.string "imagepath"
    t.string "note"
    t.boolean "archived"
    t.integer "version"
  end

  create_table "children_contacts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "child_id", null: false
    t.datetime "insert_date"
    t.string "relation"
    t.index ["child_id"], name: "index_children_contacts_on_child_id"
    t.index ["user_id"], name: "index_children_contacts_on_user_id"
  end

  create_table "game_sessions", force: :cascade do |t|
    t.datetime "start_date"
    t.string "guardian_comment"
    t.string "prof_comment"
    t.integer "step_one"
    t.integer "step_two"
    t.integer "step_three"
    t.integer "finished_state"
    t.integer "version"
    t.bigint "child_id", null: false
    t.bigint "user_id", null: false
    t.bigint "mandate_id", null: false
    t.index ["child_id"], name: "index_game_sessions_on_child_id"
    t.index ["mandate_id"], name: "index_game_sessions_on_mandate_id"
    t.index ["user_id"], name: "index_game_sessions_on_user_id"
  end

  create_table "handicaps", force: :cascade do |t|
    t.string "description"
  end

  create_table "handicaps_to_children", force: :cascade do |t|
    t.string "comment"
    t.bigint "child_id", null: false
    t.bigint "handicap_id", null: false
    t.index ["child_id"], name: "index_handicaps_to_children_on_child_id"
    t.index ["handicap_id"], name: "index_handicaps_to_children_on_handicap_id"
  end

  create_table "mandates", force: :cascade do |t|
    t.string "investigator"
    t.string "demand"
    t.bigint "child_id", null: false
    t.datetime "insert_date"
    t.index ["child_id"], name: "index_mandates_on_child_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "description"
    t.string "path"
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_pictures_on_category_id"
  end

  create_table "professionals_to_children", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "child_id", null: false
    t.datetime "start_care_date"
    t.datetime "end_care_date"
    t.index ["child_id"], name: "index_professionals_to_children_on_child_id"
    t.index ["user_id"], name: "index_professionals_to_children_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
  end

  create_table "selected_categories", force: :cascade do |t|
    t.integer "sorting"
    t.boolean "status"
    t.bigint "category_id", null: false
    t.bigint "game_session_id", null: false
    t.index ["category_id"], name: "index_selected_categories_on_category_id"
    t.index ["game_session_id"], name: "index_selected_categories_on_game_session_id"
  end

  create_table "selected_pictures", force: :cascade do |t|
    t.string "note"
    t.boolean "child_tag"
    t.boolean "do_like"
    t.boolean "is_happy"
    t.boolean "is_autonomous"
    t.integer "priority"
    t.boolean "would_like"
    t.boolean "step_one_done"
    t.boolean "step_two_done"
    t.boolean "step_three_done"
    t.bigint "picture_id", null: false
    t.bigint "game_session_id", null: false
    t.integer "version"
    t.index ["game_session_id"], name: "index_selected_pictures_on_game_session_id"
    t.index ["picture_id"], name: "index_selected_pictures_on_picture_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "pwd"
    t.string "imagepath"
    t.string "note"
    t.boolean "archived"
    t.string "phone"
    t.string "email"
    t.string "job"
    t.datetime "inserts_date"
    t.integer "user_level"
    t.integer "version"
  end

  add_foreign_key "children_contacts", "children"
  add_foreign_key "children_contacts", "users"
  add_foreign_key "game_sessions", "children"
  add_foreign_key "game_sessions", "mandates"
  add_foreign_key "game_sessions", "users"
  add_foreign_key "handicaps_to_children", "children"
  add_foreign_key "handicaps_to_children", "handicaps"
  add_foreign_key "mandates", "children"
  add_foreign_key "pictures", "categories"
  add_foreign_key "professionals_to_children", "children"
  add_foreign_key "professionals_to_children", "users"
  add_foreign_key "reviews", "movies"
  add_foreign_key "selected_categories", "categories"
  add_foreign_key "selected_categories", "game_sessions"
  add_foreign_key "selected_pictures", "game_sessions"
  add_foreign_key "selected_pictures", "pictures"
end
