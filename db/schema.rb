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

ActiveRecord::Schema.define(version: 2021_06_25_204032) do

  create_table "parliamentary_costs", force: :cascade do |t|
    t.string "txNomeParlamentar"
    t.string "cpf"
    t.integer "ideCadastro"
    t.integer "nuCarteiraParlamentar"
    t.integer "nuLegislatura"
    t.string "sgUF"
    t.string "sgPartido"
    t.integer "codLegislatura"
    t.integer "numSubCota"
    t.string "txtDescricao"
    t.integer "numEspecificacaoSubCota"
    t.string "txtDescricaoEspecificacao"
    t.string "txtFornecedor"
    t.string "txtCNPJCPF"
    t.string "txtNumero"
    t.integer "indTipoDocumento"
    t.datetime "datEmissao"
    t.float "vlrDocumento"
    t.float "vlrGlosa"
    t.float "vlrLiquido"
    t.integer "numMes"
    t.integer "numAno"
    t.integer "numParcela"
    t.string "txtPassageiro"
    t.string "txtTrecho"
    t.integer "numLote"
    t.integer "numRessarcimento"
    t.float "vlrRestituicao"
    t.integer "nuDeputadoId"
    t.integer "ideDocumento"
    t.string "urlDocumento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
