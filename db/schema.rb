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

ActiveRecord::Schema.define(version: 2021_03_26_215030) do

  create_table "connections", force: :cascade do |t|
    t.string "match_accepted"
    t.string "match_rejected"
    t.string "message"
    t.integer "you_match_id"
    t.integer "match_you_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "race"
    t.string "orientation"
    t.string "past_relationship_status"
    t.string "location"
    t.string "profession"
    t.string "hobbies"
    t.string "spirituality"
    t.integer "match_age"
    t.string "match_gender"
    t.string "match_race"
    t.string "match_past_relationship_status"
    t.string "match_spirituality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
