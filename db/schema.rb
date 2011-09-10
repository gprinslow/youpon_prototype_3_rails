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

ActiveRecord::Schema.define(:version => 20110910181804) do

  create_table "customers", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", :force => true do |t|
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", :force => true do |t|
    t.string   "name"
    t.string   "byline"
    t.string   "category"
    t.string   "description"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.string   "addressStreet1"
    t.string   "addressStreet2"
    t.string   "addressCity"
    t.string   "addressState"
    t.integer  "addressZip5"
    t.integer  "addressZip4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.integer  "merchant_id"
    t.string   "mode"
    t.string   "title"
    t.string   "byline"
    t.string   "category"
    t.string   "description"
    t.string   "terms"
    t.string   "retailPrice"
    t.string   "discountPrice"
    t.string   "discountPercent"
    t.string   "discountValue"
    t.date     "start"
    t.date     "end"
    t.integer  "numberOffered"
    t.boolean  "validationRequired"
    t.integer  "stampsRequired"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "redemptions", :force => true do |t|
    t.integer  "offer_id"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rosters", :force => true do |t|
    t.integer  "merchant_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "nameFirst"
    t.string   "nameMiddle"
    t.string   "nameLast"
    t.date     "birthday"
    t.string   "gender"
    t.integer  "zipCode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
