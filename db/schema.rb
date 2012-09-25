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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120925065946) do

  create_table "blockers", :force => true do |t|
    t.string   "blockers_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "blockers_testresults", :id => false, :force => true do |t|
    t.integer "blocker_id"
    t.integer "testresult_id"
  end

  create_table "browsers", :force => true do |t|
    t.string "browser_core"
    t.string "browser_family"
    t.string "browser_version"
  end

  create_table "bugs", :force => true do |t|
    t.string   "bugs_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bugs_testresults", :id => false, :force => true do |t|
    t.integer "bug_id"
    t.integer "testresult_id"
  end

  create_table "function_modules", :force => true do |t|
    t.string "module_name"
  end

  create_table "function_modules_testcases", :id => false, :force => true do |t|
    t.integer "function_module_id"
    t.integer "testcase_id"
  end

  create_table "locales", :force => true do |t|
    t.string "locale_name"
  end

  create_table "locales_testcases", :id => false, :force => true do |t|
    t.integer "locale_id"
    t.integer "testcase_id"
  end

  create_table "locales_testplans", :id => false, :force => true do |t|
    t.integer "locale_id"
    t.integer "testplan_id"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.date     "start_date_planned"
    t.date     "start_date_actual"
    t.date     "end_date_planned"
    t.date     "end_date_actual"
    t.string   "desc"
    t.integer  "testplans_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "tasks", ["testplans_id"], :name => "index_tasks_on_testplans_id"

  create_table "testcases", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "repro_steps"
    t.string   "expected_results"
    t.boolean  "automated"
    t.datetime "effort_estimation"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "testcases", ["user_id"], :name => "index_testcases_on_user_id"

  create_table "testcases_testplans", :id => false, :force => true do |t|
    t.integer "testcase_id"
    t.integer "testplan_id"
  end

  create_table "testplans", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "desc"
    t.datetime "start_date_planned"
    t.datetime "end_date_planned"
    t.datetime "start_date_actual"
    t.datetime "end_date_actual"
    t.datetime "original_estimation"
    t.datetime "logged_time"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "task_id"
  end

  create_table "testresults", :force => true do |t|
    t.integer  "user_id"
    t.integer  "testplan_id"
    t.integer  "testcase_id"
    t.integer  "locale_id"
    t.integer  "browser_id"
    t.string   "test_result"
    t.string   "comments"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "testresults", ["browser_id"], :name => "index_testresults_on_browser_id"
  add_index "testresults", ["locale_id"], :name => "index_testresults_on_locale_id"
  add_index "testresults", ["testcase_id"], :name => "index_testresults_on_testcase_id"
  add_index "testresults", ["testplan_id"], :name => "index_testresults_on_testplan_id"
  add_index "testresults", ["user_id"], :name => "index_testresults_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_alias"
    t.string   "user_type"
    t.string   "password"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
