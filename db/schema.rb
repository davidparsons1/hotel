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

ActiveRecord::Schema.define(version: 20160219124538) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.integer  "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "guest_first_name"
    t.string   "guest_last_name"
    t.string   "guest_email"
    t.string   "guest_phone"
    t.string   "guest_address"
    t.string   "password_digest"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "hotel_name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "room_id"
    t.date     "check_in"
    t.date     "check_out"
    t.integer  "guest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.integer  "room_type_id"
    t.string   "image"
    t.boolean  "breakfast"
    t.integer  "hotel_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "room_type_id"
    t.string   "floor"
    t.boolean  "streetview"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "hotel_id"
  end

end
