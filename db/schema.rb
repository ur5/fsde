# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100418130945) do

  create_table "payments", :force => true do |t|
    t.string   "country"
    t.integer  "year"
    t.string   "recipient"
    t.string   "global_recipient"
    t.string   "name"
    t.string   "zipcode"
    t.string   "town"
    t.string   "geo1"
    t.string   "geo2"
    t.string   "geo3"
    t.string   "country_recipient"
    t.decimal  "direct",            :precision => 20, :scale => 2
    t.decimal  "indirect",          :precision => 20, :scale => 2
    t.decimal  "rural",             :precision => 20, :scale => 2
    t.decimal  "total",             :precision => 20, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.decimal  "total",      :precision => 20, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
