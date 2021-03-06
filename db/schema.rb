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

ActiveRecord::Schema.define(:version => 20150110074614) do

  create_table "cat_types", :force => true do |t|
    t.string   "name"
    t.text     "origin"
    t.text     "speciality"
    t.integer  "recipe_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cat_types", ["recipe_id"], :name => "index_cat_types_on_recipe_id"

  create_table "cat_types_recipes", :id => false, :force => true do |t|
    t.integer "cat_type_id"
    t.integer "recipe_id"
  end

  add_index "cat_types_recipes", ["cat_type_id", "recipe_id"], :name => "index_cat_types_recipes_on_cat_type_id_and_recipe_id"
  add_index "cat_types_recipes", ["recipe_id"], :name => "index_cat_types_recipes_on_recipe_id"

  create_table "recipes", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "ingredients"
    t.text     "category"
    t.float    "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
