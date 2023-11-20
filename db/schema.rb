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

ActiveRecord::Schema[7.1].define(version: 2023_11_20_150721) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id", null: false
    t.bigint "items_id", null: false
    t.index ["items_id"], name: "index_favourites_on_items_id"
    t.index ["users_id"], name: "index_favourites_on_users_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.bigint "users_id", null: false
    t.bigint "categories_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_items_on_categories_id"
    t.index ["users_id"], name: "index_items_on_users_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id", null: false
    t.bigint "items_id", null: false
    t.bigint "reviews_id", null: false
    t.index ["items_id"], name: "index_transactions_on_items_id"
    t.index ["reviews_id"], name: "index_transactions_on_reviews_id"
    t.index ["users_id"], name: "index_transactions_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favourites", "items", column: "items_id"
  add_foreign_key "favourites", "users", column: "users_id"
  add_foreign_key "items", "categories", column: "categories_id"
  add_foreign_key "items", "users", column: "users_id"
  add_foreign_key "transactions", "items", column: "items_id"
  add_foreign_key "transactions", "reviews", column: "reviews_id"
  add_foreign_key "transactions", "users", column: "users_id"
end
