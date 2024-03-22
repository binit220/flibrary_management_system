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

ActiveRecord::Schema[7.1].define(version: 2024_03_20_194700) do
  create_table "book_issues", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "member_id", null: false
    t.date "issue_date"
    t.date "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_issues_on_book_id"
    t.index ["member_id"], name: "index_book_issues_on_member_id"
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

  add_foreign_key "book_issues", "books"
  add_foreign_key "book_issues", "members"
end
