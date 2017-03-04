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

ActiveRecord::Schema.define(version: 20170227131355) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id"
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id"

  create_table "fakturas", force: :cascade do |t|
    t.string   "nazwa"
    t.integer  "cena"
    t.integer  "firma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firmas", force: :cascade do |t|
    t.string   "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "adres"
  end

  create_table "functions", force: :cascade do |t|
    t.string   "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "imie_user"
  end

  create_table "kupnos", force: :cascade do |t|
    t.string   "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "produkt_id"
    t.integer  "firma_id"
  end

  add_index "kupnos", ["firma_id"], name: "index_kupnos_on_firma_id"
  add_index "kupnos", ["produkt_id"], name: "index_kupnos_on_produkt_id"

  create_table "posts", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "posts", ["user_id", "created_at"], name: "index_posts_on_user_id_and_created_at"

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
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "i_sushimaster"
    t.string   "i_dostawca"
    t.string   "i_ciepla"
    t.string   "i_kelnterka"
    t.integer  "user_id"
  end

  create_table "towars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "email",         	default: "", null: false
    t.string   "telefon",                    default: "", null: false
    t.string   "password_digest"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "remember_digest"
    t.string   "sort"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["user"], name: "index_users_on_user"

end
