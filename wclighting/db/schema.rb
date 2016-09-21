# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160921183219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 64, null: false
    t.string   "phone",      limit: 10, null: false
    t.string   "address",               null: false
    t.text     "email",                 null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name",       limit: 50,  null: false
    t.string   "last_name",        limit: 50,  null: false
    t.string   "title",            limit: 128, null: false
    t.text     "email",                        null: false
    t.string   "phone",            limit: 10,  null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.index ["email"], name: "index_employees_on_email", unique: true, using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name",             null: false
    t.text     "profile",          null: false
    t.text     "website",          null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "manufacturers_product_types", force: :cascade do |t|
    t.integer "product_type_id"
    t.integer "manufacturer_id"
    t.index ["manufacturer_id"], name: "index_manufacturers_product_types_on_manufacturer_id", using: :btree
    t.index ["product_type_id"], name: "index_manufacturers_product_types_on_product_type_id", using: :btree
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
