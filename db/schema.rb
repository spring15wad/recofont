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

ActiveRecord::Schema.define(version: 20150430132722) do

  create_table "attachments", force: :cascade do |t|
    t.string   "filename"
    t.binary   "filedata"
    t.string   "mime_type"
    t.integer  "example_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attachments", ["example_id"], name: "index_attachments_on_example_id"

  create_table "examples", force: :cascade do |t|
    t.text     "description"
    t.string   "example_url"
    t.integer  "recommendation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.text     "recommendation"
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
    t.string   "username"
    t.string   "uid"
    t.string   "provider"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["team_id"], name: "index_users_on_team_id"

end
