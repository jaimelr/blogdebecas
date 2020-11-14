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

ActiveRecord::Schema.define(version: 2020_11_14_162149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string "name"
    t.bigint "scholarship_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["scholarship_id"], name: "index_requirements_on_scholarship_id"
  end

  create_table "scholarships", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "start"
    t.date "end"
    t.string "source"
    t.text "benefits"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "categories_id"
    t.bigint "category_id", null: false
    t.boolean "status"
    t.index ["categories_id"], name: "index_scholarships_on_categories_id"
    t.index ["category_id"], name: "index_scholarships_on_category_id"
  end

  add_foreign_key "requirements", "scholarships"
  add_foreign_key "scholarships", "categories"
  add_foreign_key "scholarships", "categories", column: "categories_id"
end
