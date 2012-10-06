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

ActiveRecord::Schema.define(:version => 20121006175805) do

  create_table "admins", :id => false, :force => true do |t|
    t.string   "email",                            :default => "", :null => false
    t.string   "encrypted_password",               :default => "", :null => false
    t.integer  "sign_in_count",                    :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "uuid",               :limit => 36
    t.string   "username"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true

  create_table "inspectors", :id => false, :force => true do |t|
    t.string   "email",                            :default => "", :null => false
    t.string   "encrypted_password",               :default => "", :null => false
    t.integer  "sign_in_count",                    :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "uuid",               :limit => 36
    t.string   "username"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "inspectors", ["email"], :name => "index_inspectors_on_email", :unique => true

  create_table "list_items", :id => false, :force => true do |t|
    t.string   "uuid",        :limit => 36
    t.string   "title"
    t.text     "description"
    t.string   "answer_kind"
    t.text     "selection"
    t.integer  "list_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "list_items", ["list_id"], :name => "index_list_items_on_list_id"

  create_table "lists", :id => false, :force => true do |t|
    t.string   "uuid",        :limit => 36
    t.string   "name"
    t.text     "description"
    t.integer  "admin_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "lists", ["admin_id"], :name => "index_lists_on_admin_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "reports", :id => false, :force => true do |t|
    t.string   "uuid",         :limit => 36
    t.integer  "list_id"
    t.integer  "inspector_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "reports", ["inspector_id"], :name => "index_reports_on_inspector_id"
  add_index "reports", ["list_id"], :name => "index_reports_on_list_id"

end
