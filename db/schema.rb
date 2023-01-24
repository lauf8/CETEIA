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

ActiveRecord::Schema[7.0].define(version: 2023_01_24_142029) do
  create_table "emprestimos", force: :cascade do |t|
    t.date "data_emprestimo"
    t.date "data_devolucao"
    t.boolean "status"
    t.string "observacacao"
    t.integer "locador_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locador_id"], name: "index_emprestimos_on_locador_id"
  end

  create_table "locadors", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "turma"
    t.string "telefone"
    t.string "email"
    t.string "cidade"
    t.string "logradouro"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objeto_emprestimos", force: :cascade do |t|
    t.integer "objeto_id", null: false
    t.integer "emprestimo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emprestimo_id"], name: "index_objeto_emprestimos_on_emprestimo_id"
    t.index ["objeto_id"], name: "index_objeto_emprestimos_on_objeto_id"
  end

  create_table "objetos", force: :cascade do |t|
    t.string "codigo"
    t.string "tipo"
    t.text "descricacao"
    t.string "condicao"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "emprestimos", "locadors"
  add_foreign_key "objeto_emprestimos", "emprestimos"
  add_foreign_key "objeto_emprestimos", "objetos"
end
