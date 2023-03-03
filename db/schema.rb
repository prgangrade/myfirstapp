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

ActiveRecord::Schema[7.0].define(version: 2023_02_28_060016) do
  create_table "appies", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookers", force: :cascade do |t|
    t.string "name"
    t.integer "authors_id"
    t.integer "readers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authors_id"], name: "index_bookers_on_authors_id"
    t.index ["readers_id"], name: "index_bookers_on_readers_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.integer "authors_id"
    t.integer "aut_id_id"
    t.integer "readers_id"
    t.integer "read_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aut_id_id"], name: "index_books_on_aut_id_id"
    t.index ["authors_id"], name: "index_books_on_authors_id"
    t.index ["read_id_id"], name: "index_books_on_read_id_id"
    t.index ["readers_id"], name: "index_books_on_readers_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "product_id", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_companies_on_manager_id"
  end

  create_table "counts", force: :cascade do |t|
    t.string "name"
    t.integer "rollno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firstapps", force: :cascade do |t|
    t.string "name"
    t.integer "rollno"
    t.integer "marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hobby"
    t.string "gender"
    t.string "date_of_birth"
    t.string "language"
    t.string "image"
    t.string "email"
  end

  create_table "firstones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firsts", force: :cascade do |t|
    t.string "name"
    t.integer "rollno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "newmarks"
    t.string "state"
  end

  create_table "newmodels", force: :cascade do |t|
    t.string "login"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "ones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.string "image_type"
    t.integer "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_type", "image_id"], name: "index_pictures_on_image"
  end

  create_table "productants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "readers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secondapps", force: :cascade do |t|
    t.string "name"
    t.string "hobby"
    t.integer "firstapp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["firstapp_id"], name: "index_secondapps_on_firstapp_id"
  end

  create_table "secondones", force: :cascade do |t|
    t.string "name"
    t.integer "secondone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["secondone_id"], name: "index_secondones_on_secondone_id"
  end

  create_table "seconds", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.string "size"
    t.string "newsize"
    t.integer "uniid"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "rollno"
    t.integer "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "twos", force: :cascade do |t|
    t.string "name"
    t.integer "one_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["one_id"], name: "index_twos_on_one_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.integer "no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "aut_ids"
  add_foreign_key "books", "authors", column: "authors_id"
  add_foreign_key "books", "read_ids"
  add_foreign_key "books", "readers", column: "readers_id"
end
