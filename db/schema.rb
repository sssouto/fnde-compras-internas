# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_25_022041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.integer "numero_item"
    t.string "codigo_item"
    t.string "descricao_sucinta_objeto"
    t.string "grupo_despesa"
    t.string "nome_grupo"
    t.string "grau_prioridade"
    t.string "renovacao_contrato"
    t.string "acao_orcamentaria"
    t.float "quantidade_estimava"
    t.float "quantidade_contratada"
    t.string "unidade_fornecimento"
    t.float "valor_unitario_estimado"
    t.float "valor_unit_contratado"
    t.float "valor_total_estimado"
    t.float "valor_total_contratado"
    t.string "unidade_responsavel"
    t.date "data_desejada_contratacao"
    t.date "data_contratada"
    t.string "situacao"
    t.bigint "processo_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ano_plano"
    t.index ["processo_id"], name: "index_items_on_processo_id"
  end

  create_table "processos", force: :cascade do |t|
    t.string "sei"
    t.string "objeto"
    t.string "demandante"
    t.string "tipo_contratacao"
    t.string "fase"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "data_inicio"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "items", "processos"
end
