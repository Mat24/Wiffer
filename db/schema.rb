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

ActiveRecord::Schema.define(version: 20140918215322) do

  create_table "captures", force: true do |t|
    t.integer  "red_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "captures", ["red_id"], name: "index_captures_on_red_id"

  create_table "isps", force: true do |t|
    t.string   "name"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localizations", force: true do |t|
    t.integer  "red_id"
    t.decimal  "coord_x",    precision: 10, scale: 10
    t.decimal  "coord_y",    precision: 10, scale: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "localizations", ["red_id"], name: "index_localizations_on_red_id"

  create_table "pass_types", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reds", force: true do |t|
    t.integer  "isp_id"
    t.integer  "pass_type_id"
    t.string   "password"
    t.string   "wps_pin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reds", ["isp_id"], name: "index_reds_on_isp_id"
  add_index "reds", ["pass_type_id"], name: "index_reds_on_pass_type_id"

  create_table "routers", force: true do |t|
    t.integer  "red_id"
    t.string   "bssid"
    t.string   "essid"
    t.string   "comment"
    t.string   "public_ip"
    t.string   "port"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routers", ["red_id"], name: "index_routers_on_red_id"

end
