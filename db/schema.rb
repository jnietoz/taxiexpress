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

ActiveRecord::Schema.define(version: 20150914185336) do

  create_table "entidades", force: :cascade do |t|
    t.string   "Descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "parametros", force: :cascade do |t|
    t.string   "texto",      limit: 255
    t.integer  "valor",      limit: 4
    t.integer  "entidad_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "parametros", ["entidad_id"], name: "index_parametros_on_entidad_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "Nombres",    limit: 255
    t.string   "ApPaterno",  limit: 255
    t.string   "ApMaterno",  limit: 255
    t.string   "Nick",       limit: 255
    t.string   "Contrasena", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "parametros", "entidades"
end
