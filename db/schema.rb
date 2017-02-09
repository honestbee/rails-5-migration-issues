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

ActiveRecord::Schema.define(version: 20170209003932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brand_translations", force: :cascade do |t|
    t.integer  "brand_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["brand_id"], name: "index_brand_translations_on_brand_id", using: :btree
    t.index ["locale"], name: "index_brand_translations_on_locale", using: :btree
  end

  create_table "brands", force: :cascade do |t|
    t.boolean  "published"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "display_order"
  end

  create_table "categories", force: :cascade do |t|
    t.boolean  "active"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "priority"
    t.index ["department_id"], name: "index_categories_on_department_id", using: :btree
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end

  create_table "category_translations", force: :cascade do |t|
    t.integer  "category_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.index ["category_id"], name: "index_category_translations_on_category_id", using: :btree
    t.index ["locale"], name: "index_category_translations_on_locale", using: :btree
  end

  create_table "department_translations", force: :cascade do |t|
    t.integer  "department_id", null: false
    t.string   "locale",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
    t.index ["department_id"], name: "index_department_translations_on_department_id", using: :btree
    t.index ["locale"], name: "index_department_translations_on_locale", using: :btree
  end

  create_table "departments", force: :cascade do |t|
    t.boolean  "active"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "priority"
    t.index ["brand_id"], name: "index_departments_on_brand_id", using: :btree
  end

  create_table "product_translations", force: :cascade do |t|
    t.integer  "product_id",  null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.json     "description"
    t.index ["locale"], name: "index_product_translations_on_locale", using: :btree
    t.index ["product_id"], name: "index_product_translations_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.integer  "price_cents"
    t.boolean  "published"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "brand_id"
    t.index ["brand_id"], name: "index_products_on_brand_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
