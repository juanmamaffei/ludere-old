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

ActiveRecord::Schema.define(version: 20170131121400) do

  create_table "misions", force: :cascade do |t|
    t.string   "nombre"
    t.string   "nivel"
    t.text     "descripcion"
    t.string   "urltemario"
    t.string   "urlimagen"
    t.text     "comentario"
    t.boolean  "habilitado"
    t.boolean  "visible"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "objetivos", force: :cascade do |t|
    t.integer  "mision_id"
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "habilitado"
    t.string   "visible"
    t.string   "urlvideoinstructivo"
    t.string   "urlpdfinstructivo"
    t.string   "urlhtmlinstructivo"
    t.string   "descripcioninstructivo"
    t.string   "urlvideoevaluativo"
    t.string   "urlpdfevaluativo"
    t.string   "urlhtmlevaluativo"
    t.string   "descripcionevaluativo"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["mision_id"], name: "index_objetivos_on_mision_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre",                 default: ""
    t.string   "escuela",                default: ""
    t.integer  "dni",                    default: 0
    t.string   "misiones",               default: "0"
    t.integer  "permission_level",       default: 1
    t.string   "urlfoto",                default: "0"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
