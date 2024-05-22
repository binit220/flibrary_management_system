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

ActiveRecord::Schema[7.1].define(version: 2024_05_22_101311) do
  create_table "book_issues", force: :cascade do |t|
    t.string "book_id"
    t.string "user_id"
    t.string "issue_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "book_name"
    t.string "user_name"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "genr"
    t.string "isbn"
    t.boolean "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_count"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mobile_no"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.date "date_of_birth"
  end

end
