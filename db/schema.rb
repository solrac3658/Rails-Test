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

ActiveRecord::Schema.define(version: 2020_02_20_181025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entretenimientos", force: :cascade do |t|
    t.string "titulo"
    t.string "genero"
    t.float "precio"
    t.string "tipo"
    t.float "duracion"
    t.integer "temporada"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "entretenimiento_id"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entretenimiento_id"], name: "index_rents_on_entretenimiento_id"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rents", "entretenimientos"
  add_foreign_key "rents", "users"
end
