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

ActiveRecord::Schema.define(:version => 20110827160610) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "describes", :force => true do |t|
    t.integer  "subject"
    t.string   "description"
    t.integer  "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "describe"
  end

  create_table "descriptions", :force => true do |t|
    t.string   "subject"
    t.text     "description"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.integer  "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
