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

ActiveRecord::Schema.define(:version => 20121011211647) do

  create_table "educations", :force => true do |t|
    t.string   "school"
    t.string   "website"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.string   "keywords"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "experiences", :force => true do |t|
    t.string   "compagny"
    t.string   "website"
    t.string   "position"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.string   "keywords"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "picture_relations", :force => true do |t|
    t.integer  "picture_id"
    t.integer  "parent_id"
    t.string   "parent_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pictures", :force => true do |t|
    t.string   "legend"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "location"
    t.string   "login"
    t.string   "email"
    t.string   "password_digest"
    t.string   "title"
    t.text     "description"
    t.text     "hobby"
    t.string   "git_link"
    t.string   "fb_link"
    t.string   "twitter_link"
    t.string   "lkdIn_link"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "technologies"
    t.string   "status"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
