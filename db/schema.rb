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

ActiveRecord::Schema.define(version: 20180314064448) do

  create_table "applications", force: :cascade do |t|
    t.integer "resume_id"
    t.integer "employer"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cover_letters", force: :cascade do |t|
    t.integer "resume_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "company_name"
    t.text "work_summary"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mapping_tables", force: :cascade do |t|
  end

  create_table "resumes", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zip"], name: "index_resumes_on_zip"
  end

  create_table "view_histories", force: :cascade do |t|
    t.integer "resume_id"
    t.datetime "time_viewed"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
