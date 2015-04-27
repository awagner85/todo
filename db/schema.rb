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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150421012010) do
=======
ActiveRecord::Schema.define(version: 20150325035337) do
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6

  create_table "lists", force: true do |t|
    t.string  "title"
    t.integer "user_id"
  end

  create_table "todo_items", force: true do |t|
    t.text     "item"
    t.integer  "user_id"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
    t.boolean  "completed"
=======
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
    t.string   "password_digest"
=======
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
  end

end
