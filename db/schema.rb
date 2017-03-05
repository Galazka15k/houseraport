# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170126172838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id", using: :btree
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id", using: :btree

  create_table "fakturas", force: :cascade do |t|
    t.string   "nazwa"
    t.integer  "cena"
    t.integer  "firma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firmas", force: :cascade do |t|
    t.string   "nazwa"
    t.string   "adres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "functions", force: :cascade do |t|
    t.string   "nazwa",      default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "kupnos", force: :cascade do |t|
    t.string   "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "produkt_id"
    t.integer  "firma_id"
  end

  add_index "kupnos", ["firma_id"], name: "index_kupnos_on_firma_id", using: :btree
  add_index "kupnos", ["produkt_id"], name: "index_kupnos_on_produkt_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "content",    default: "", null: false
    t.string   "string",     default: "", null: false
    t.string   "user_id"
    t.string   "integer"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "produkts", force: :cascade do |t|
    t.string   "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rozliczenies", force: :cascade do |t|
    t.string   "nazwa"
    t.integer  "kasa_fiskalna"
    t.integer  "obrot"
    t.integer  "karta"
    t.integer  "w_sushimaster"
    t.integer  "w_ciepla"
    t.integer  "w_dostawca"
    t.integer  "w_kelnterka"
    t.string   "i_sushimaster"
    t.string   "i_ciepla"
    t.string   "i_dostawca"
    t.string   "i_kelnterka"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "userfuns", force: :cascade do |t|
    t.string   "nazwa"
    t.integer  "user_id"
    t.integer  "function_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "user"
    t.string   "email",           default: "", null: false
    t.string   "telefon",         default: "", null: false
    t.string   "password_digest"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["user"], name: "index_users_on_user", using: :btree

  add_foreign_key "assignments", "roles"
  add_foreign_key "assignments", "users"
  add_foreign_key "kupnos", "firmas"
  add_foreign_key "kupnos", "produkts"
end
