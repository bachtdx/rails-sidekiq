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

ActiveRecord::Schema.define(version: 2021_03_09_100100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "endangereds", force: :cascade do |t|
    t.string "name"
    t.string "iucn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "high_scores", force: :cascade do |t|
    t.string "game"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "body"
    t.integer "shark_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shark_id"], name: "index_posts_on_shark_id"
  end

  create_table "sharks", force: :cascade do |t|
    t.string "name"
    t.text "facts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
