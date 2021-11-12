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

ActiveRecord::Schema.define(version: 2021_11_12_192040) do

  create_table "cocktails", force: :cascade do |t|
    t.integer "api_id"
    t.string "image_url"
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "measure1"
    t.string "ingredient1"
    t.string "measure2"
    t.string "ingredient2"
    t.string "measure3"
    t.string "ingredient3"
    t.string "measure4"
    t.string "ingredient4"
    t.string "measure5"
    t.string "ingredient5"
    t.string "measure6"
    t.string "ingredient6"
    t.string "measure7"
    t.string "ingredient7"
    t.string "measure8"
    t.string "ingredient8"
    t.string "measure9"
    t.string "ingredient9"
    t.string "measure10"
    t.string "ingredient10"
    t.string "measure11"
    t.string "ingredient11"
    t.string "measure12"
    t.string "ingredient12"
    t.string "measure13"
    t.string "ingredient13"
    t.string "measure14"
    t.string "ingredient14"
    t.string "measure15"
    t.string "ingredient15"
    t.text "instructions"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cocktail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "api_id"
    t.index ["user_id", "cocktail_id"], name: "index_favorites_on_user_id_and_cocktail_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
