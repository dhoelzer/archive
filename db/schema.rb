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

ActiveRecord::Schema.define(:version => 20111124165030) do

  create_table "data", :force => true do |t|
    t.string   "item"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "thing_id"
  end

  create_table "data_metadata", :id => false, :force => true do |t|
    t.integer "datum_id"
    t.integer "metadatum_id"
  end

  create_table "data_types", :force => true do |t|
    t.string   "the_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metadata", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id"
    t.integer  "data_type_id"
    t.integer  "default_values_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type_id"
  end

  create_table "things", :force => true do |t|
    t.integer  "type_id"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
