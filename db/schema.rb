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

ActiveRecord::Schema.define(:version => 20130921164145) do

  create_table "attacks", :force => true do |t|
    t.string   "name"
    t.string   "cost"
    t.string   "text"
    t.integer  "dmg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cards", :force => true do |t|
    t.integer  "hp"
    t.string   "name"
    t.string   "weakness"
    t.string   "ability"
    t.string   "flavor_text"
    t.string   "resistance"
    t.string   "retreat"
    t.integer  "stage"
    t.string   "evolved_from"
    t.integer  "set_no"
    t.integer  "height"
    t.integer  "weight"
    t.string   "miniflavor"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "cards_decks", :id => false, :force => true do |t|
    t.integer "card_id"
    t.integer "deck_id"
  end

  add_index "cards_decks", ["card_id", "deck_id"], :name => "index_cards_decks_on_card_id_and_deck_id"

  create_table "cards_types", :id => false, :force => true do |t|
    t.integer "card_id"
    t.integer "type_id"
  end

  add_index "cards_types", ["card_id", "type_id"], :name => "index_cards_types_on_card_id_and_type_id"

  create_table "decks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expansions", :force => true do |t|
    t.string   "name"
    t.string   "icon_url"
    t.string   "release_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "deck_id"
  end

end
