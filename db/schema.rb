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

ActiveRecord::Schema.define(version: 20170404203616) do

  create_table "ads", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.decimal  "size",                      precision: 10
    t.string   "colour",      limit: 255
    t.text     "description", limit: 65535
    t.string   "base",        limit: 255
    t.decimal  "dryingtime",                precision: 10
    t.decimal  "coverage",                  precision: 10
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "image",       limit: 255
    t.string   "typ",         limit: 255
    t.string   "price",       limit: 255
    t.integer  "productcode", limit: 4
  end

  create_table "tranelems", force: :cascade do |t|
    t.integer  "tranhead_id", limit: 4
    t.integer  "ad_id",       limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "item_count",  limit: 4, default: 0
  end

  create_table "tranheads", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "status",     limit: 255
  end

  create_table "user_sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",              limit: 255
    t.string   "crypted_password",   limit: 255
    t.string   "password_salt",      limit: 255
    t.string   "persistence_token",  limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "name",               limit: 255
    t.string   "surname",            limit: 255
    t.string   "company",            limit: 255
    t.string   "city",               limit: 255
    t.string   "street",             limit: 255
    t.string   "postcode",           limit: 255
    t.string   "phonenumber",        limit: 255
    t.datetime "last_login_at"
    t.string   "last_login_ip",      limit: 255
    t.integer  "login_count",        limit: 4,   default: 0,     null: false
    t.integer  "failed_login_count", limit: 4,   default: 0,     null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.string   "current_login_ip",   limit: 255
    t.boolean  "admin",                          default: false, null: false
  end

end
