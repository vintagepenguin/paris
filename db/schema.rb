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

ActiveRecord::Schema.define(version: 20150711040626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_goals", force: true do |t|
    t.string   "task"
    t.integer  "long_term_goal_id"
    t.integer  "mid_term_goal_id"
    t.integer  "weekly_goal_id"
    t.date     "date_of_day"
    t.string   "time"
    t.integer  "category_id"
    t.boolean  "is_current_goal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "daily_goals", ["category_id"], name: "index_daily_goals_on_category_id", using: :btree
  add_index "daily_goals", ["long_term_goal_id"], name: "index_daily_goals_on_long_term_goal_id", using: :btree
  add_index "daily_goals", ["mid_term_goal_id"], name: "index_daily_goals_on_mid_term_goal_id", using: :btree
  add_index "daily_goals", ["weekly_goal_id"], name: "index_daily_goals_on_weekly_goal_id", using: :btree

  create_table "focus_points", force: true do |t|
    t.text     "description"
    t.integer  "daily_goal_id"
    t.integer  "long_term_goal_id"
    t.integer  "mid_term_goal_id"
    t.integer  "weekly_goal_id"
    t.date     "date_of_day"
    t.string   "time"
    t.integer  "category_id"
    t.boolean  "used_before"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "focus_points", ["category_id"], name: "index_focus_points_on_category_id", using: :btree
  add_index "focus_points", ["daily_goal_id"], name: "index_focus_points_on_daily_goal_id", using: :btree
  add_index "focus_points", ["long_term_goal_id"], name: "index_focus_points_on_long_term_goal_id", using: :btree
  add_index "focus_points", ["mid_term_goal_id"], name: "index_focus_points_on_mid_term_goal_id", using: :btree
  add_index "focus_points", ["weekly_goal_id"], name: "index_focus_points_on_weekly_goal_id", using: :btree

  create_table "improve_ons", force: true do |t|
    t.text     "description"
    t.integer  "daily_goal_id"
    t.integer  "long_term_goal_id"
    t.integer  "mid_term_goal_id"
    t.integer  "weekly_goal_id"
    t.date     "date_of_day"
    t.string   "time"
    t.integer  "category_id"
    t.boolean  "used_before"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "improve_ons", ["category_id"], name: "index_improve_ons_on_category_id", using: :btree
  add_index "improve_ons", ["daily_goal_id"], name: "index_improve_ons_on_daily_goal_id", using: :btree
  add_index "improve_ons", ["long_term_goal_id"], name: "index_improve_ons_on_long_term_goal_id", using: :btree
  add_index "improve_ons", ["mid_term_goal_id"], name: "index_improve_ons_on_mid_term_goal_id", using: :btree
  add_index "improve_ons", ["weekly_goal_id"], name: "index_improve_ons_on_weekly_goal_id", using: :btree

  create_table "long_term_goals", force: true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "is_achieved"
    t.boolean  "was_adjusted"
    t.boolean  "on_pace"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "long_term_goals", ["category_id"], name: "index_long_term_goals_on_category_id", using: :btree

  create_table "mid_term_goals", force: true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "is_achieved"
    t.boolean  "was_adjusted"
    t.boolean  "on_pace"
    t.integer  "long_term_goal_id"
    t.boolean  "is_current_goal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mid_term_goals", ["long_term_goal_id"], name: "index_mid_term_goals_on_long_term_goal_id", using: :btree

  create_table "strengths", force: true do |t|
    t.text     "description"
    t.integer  "daily_goal_id"
    t.integer  "long_term_goal_id"
    t.integer  "mid_term_goal_id"
    t.integer  "weekly_goal_id"
    t.date     "date_of_day"
    t.string   "time"
    t.integer  "category_id"
    t.boolean  "used_before"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "strengths", ["category_id"], name: "index_strengths_on_category_id", using: :btree
  add_index "strengths", ["daily_goal_id"], name: "index_strengths_on_daily_goal_id", using: :btree
  add_index "strengths", ["long_term_goal_id"], name: "index_strengths_on_long_term_goal_id", using: :btree
  add_index "strengths", ["mid_term_goal_id"], name: "index_strengths_on_mid_term_goal_id", using: :btree
  add_index "strengths", ["weekly_goal_id"], name: "index_strengths_on_weekly_goal_id", using: :btree

  create_table "weekly_goals", force: true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "is_achieved"
    t.boolean  "was_adjusted"
    t.boolean  "on_pace"
    t.integer  "long_term_goal_id"
    t.integer  "mid_term_goal_id"
    t.boolean  "is_current_goal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "weekly_goals", ["long_term_goal_id"], name: "index_weekly_goals_on_long_term_goal_id", using: :btree
  add_index "weekly_goals", ["mid_term_goal_id"], name: "index_weekly_goals_on_mid_term_goal_id", using: :btree

end
