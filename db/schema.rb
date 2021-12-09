# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_09_134002) do

  create_table "act_buceos", force: :cascade do |t|
    t.string "titulo"
    t.string "subtitulo"
    t.string "localizacion"
    t.string "telefono"
    t.string "sitioweb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "act_ptematicos", force: :cascade do |t|
    t.string "titulo"
    t.string "subtitulo"
    t.string "localizacion"
    t.string "telefono"
    t.string "sitioweb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "act_senderismos", force: :cascade do |t|
    t.string "titulo"
    t.string "subtitulo"
    t.string "ruta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "preguntasfrecuentes", force: :cascade do |t|
    t.string "pregunta"
    t.string "respuesta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end