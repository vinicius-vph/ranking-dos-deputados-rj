class CreateParliamentaryCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :parliamentary_costs do |t|
      t.string :txNomeParlamentar
      t.string :cpf
      t.integer :ideCadastro
      t.integer :nuCarteiraParlamentar
      t.integer :nuLegislatura
      t.string :sgUF
      t.string :sgPartido
      t.integer :codLegislatura
      t.integer :numSubCota
      t.string :txtDescricao
      t.integer :numEspecificacaoSubCota
      t.string :txtDescricaoEspecificacao
      t.string :txtFornecedor
      t.string :txtCNPJCPF
      t.string :txtNumero
      t.integer :indTipoDocumento
      t.datetime :datEmissao
      t.float :vlrDocumento
      t.float :vlrGlosa
      t.float :vlrLiquido
      t.integer :numMes
      t.integer :numAno
      t.integer :numParcela
      t.string :txtPassageiro
      t.string :txtTrecho
      t.integer :numLote
      t.integer :numRessarcimento
      t.float :vlrRestituicao
      t.integer :nuDeputadoId
      t.integer :ideDocumento
      t.string :urlDocumento

      t.timestamps
    end
  end
end
