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

ActiveRecord::Schema.define(version: 2019_12_06_114943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "btree_gin"
  enable_extension "btree_gist"
  enable_extension "citext"
  enable_extension "cube"
  enable_extension "dblink"
  enable_extension "dict_int"
  enable_extension "dict_xsyn"
  enable_extension "earthdistance"
  enable_extension "fuzzystrmatch"
  enable_extension "hstore"
  enable_extension "intarray"
  enable_extension "ltree"
  enable_extension "pg_stat_statements"
  enable_extension "pg_trgm"
  enable_extension "pgcrypto"
  enable_extension "pgrowlocks"
  enable_extension "pgstattuple"
  enable_extension "plpgsql"
  enable_extension "plv8"
  enable_extension "tablefunc"
  enable_extension "unaccent"
  enable_extension "uuid-ossp"
  enable_extension "xml2"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "id_cat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "child_contacts", force: :cascade do |t|
    t.integer "id_user"
    t.integer "id_child"
    t.datetime "insert_date"
    t.string "relation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.integer "id_child"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_sessions", force: :cascade do |t|
    t.datetime "startdate"
    t.string "guardian_comment"
    t.string "prof_comment"
    t.integer "step_one"
    t.integer "step_two"
    t.integer "step_three"
    t.datetime "finished_date"
    t.integer "version"
    t.integer "id_game"
    t.integer "id_child"
    t.integer "id_user_prof"
    t.integer "mandate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "handicap_to_children", force: :cascade do |t|
    t.string "comment"
    t.integer "id_child"
    t.integer "id_handicap"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "handicaps", force: :cascade do |t|
    t.string "description"
    t.integer "id_handicap"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mandates", force: :cascade do |t|
    t.string "instigator"
    t.string "demand"
    t.integer "id_mandate"
    t.integer "id_child"
    t.datetime "insert_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "description"
    t.string "path"
    t.integer "id_pic"
    t.integer "id_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professionnal_to_children", force: :cascade do |t|
    t.string "id_care"
    t.integer "id_child"
    t.integer "id_user_prof"
    t.datetime "start_care_date"
    t.datetime "end_care_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "selected_categories", force: :cascade do |t|
    t.integer "sorting"
    t.boolean "status"
    t.integer "id_category"
    t.integer "id_game"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.integer "id_pic"
    t.integer "id_game"
    t.integer "version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.integer "id_user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
