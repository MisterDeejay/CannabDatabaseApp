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

ActiveRecord::Schema.define(version: 20150618203851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.text     "title",           null: false
    t.integer  "journal_id"
    t.string   "volume"
    t.string   "issue"
    t.date     "date_published"
    t.text     "article_url"
    t.boolean  "dosage_included"
    t.string   "dosage_amt"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disease_tags", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "disease_tags", ["taggable_type", "taggable_id"], name: "index_disease_tags_on_taggable_type_and_taggable_id", using: :btree

  create_table "journals", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "keywords", ["taggable_type", "taggable_id"], name: "index_keywords_on_taggable_type_and_taggable_id", using: :btree

  create_table "phyto_cannabinoids", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "phyto_cannabinoids", ["taggable_type", "taggable_id"], name: "index_phyto_cannabinoids_on_taggable_type_and_taggable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "full_name",       null: false
    t.string   "email",           null: false
    t.string   "username"
    t.string   "session_token"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
