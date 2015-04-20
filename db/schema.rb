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

ActiveRecord::Schema.define(version: 20150420201842) do

  create_table "examples", force: :cascade do |t|
    t.string   "url"
    t.binary   "file"
    t.integer  "recommendation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.binary   "recommendation"
    t.text     "font_stack"
    t.string   "pull_request_url"
    t.integer  "team_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "project_name"
    t.string   "proposal"
    t.string   "github_repo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "username"
    t.string  "email"
    t.string  "uid"
    t.integer "team_id"
  end

  add_index "users", ["team_id"], name: "index_users_on_team_id"

end