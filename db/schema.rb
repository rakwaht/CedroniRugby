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

ActiveRecord::Schema.define(:version => 20141119103810) do

  create_table "albums", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "news", :force => true do |t|
    t.text     "author"
    t.text     "title"
    t.text     "body"
    t.text     "image_url"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.text     "prew"
    t.string   "topic"
    t.integer  "year",       :default => 2014
  end

  create_table "photos", :force => true do |t|
    t.text     "image_url"
    t.integer  "album_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
  end

  create_table "teams", :force => true do |t|
    t.text     "name"
    t.integer  "point"
    t.integer  "games"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "win"
    t.integer  "lose"
    t.integer  "tie"
    t.integer  "point_made"
    t.integer  "point_given"
    t.integer  "try"
    t.integer  "year"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
