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

ActiveRecord::Schema.define(version: 20161126205019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicant_languages", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "applicant_id"
    t.integer  "language_id"
  end

  create_table "applicants", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "location"
    t.float    "gpa"
    t.float    "exp"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "recruiter_id"
    t.integer  "position_id"
    t.string   "email"
    t.string   "school"
  end

  add_index "applicants", ["position_id"], name: "index_applicants_on_position_id", using: :btree
  add_index "applicants", ["recruiter_id"], name: "index_applicants_on_recruiter_id", using: :btree

  create_table "applicants_statuses", id: false, force: :cascade do |t|
    t.integer "applicant_id"
    t.integer "status_id"
  end

  add_index "applicants_statuses", ["applicant_id"], name: "index_applicants_statuses_on_applicant_id", using: :btree
  add_index "applicants_statuses", ["status_id"], name: "index_applicants_statuses_on_status_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
