require 'csv'

class CsvController < ApplicationController
    
    def create

        csv_content = File.read(uploaded_file)

        csv = CSV.parse(csv_content, :headers => true, :liberal_parsing => true , :col_sep => ";")

        csv.each do |row|
            next if row["﻿\"txNomeParlamentar\""] == nil or row['sgUF'] != "RJ"
            expense_statement = ParliamentaryCost.new
            
            expense_statement.txNomeParlamentar = row["﻿\"txNomeParlamentar\""]
            expense_statement.cpf = row['cpf']
            expense_statement.ideCadastro = row['ideCadastro']
            expense_statement.nuCarteiraParlamentar = row['nuCarteiraParlamentar']
            expense_statement.nuLegislatura = row['nuLegislatura']
            expense_statement.sgUF = row['sgUF']
            expense_statement.sgPartido = row['sgPartido']
            expense_statement.codLegislatura = row['codLegislatura']
            expense_statement.numSubCota = row['numSubCota']
            expense_statement.txtDescricao = row['txtDescricao']
            expense_statement.numEspecificacaoSubCota = row['numEspecificacaoSubCota']
            expense_statement.txtDescricaoEspecificacao = row['txtDescricaoEspecificacao']
            expense_statement.txtFornecedor = row['txtFornecedor']
            expense_statement.txtCNPJCPF = row['txtCNPJCPF']
            expense_statement.txtNumero = row['txtNumero']
            expense_statement.indTipoDocumento = row['indTipoDocumento']
            expense_statement.datEmissao = row['datEmissao']
            expense_statement.vlrDocumento = row['vlrDocumento']
            expense_statement.vlrGlosa = row['vlrGlosa']
            expense_statement.vlrLiquido = row['vlrLiquido']
            expense_statement.numMes = row['numMes']
            expense_statement.numAno = row['numAno']
            expense_statement.numParcela = row['numParcela']
            expense_statement.txtPassageiro = row['txtPassageiro']
            expense_statement.txtTrecho = row['txtTrecho']
            expense_statement.numLote = row['numLote']
            expense_statement.numRessarcimento = row['numRessarcimento']
            expense_statement.vlrRestituicao = row['vlrRestituicao']
            expense_statement.nuDeputadoId = row['nuDeputadoId']
            expense_statement.ideDocumento = row['ideDocumento']
            expense_statement.urlDocumento = row['urlDocumento']
            
            expense_statement.save  
        end

        redirect_to csv_resultado_path, notice: ('Importado com sucesso !')


    end
    
    def resultado
        
        parliamentary_name = []
        parliamentary_name_and_values = []
        @parliamentary_total = []

        @parliamentary_cost = ParliamentaryCost.where(sgUF: "RJ")
        
        @parliamentary_cost.each do |pc|
            parliamentary_name << pc.txNomeParlamentar 
            parliamentary_name_and_values << {pc.txNomeParlamentar => pc.vlrLiquido}
        end
        
        parliamentary_name.uniq.each do |pn|
            values = []
            
            parliamentary_name_and_values.map do |statement|
                values << statement[pn]
            end
            
            @parliamentary_total << [pn, values.compact.sum]
        end

        render "csv/resultado"
    end

    def detalhes
        @details = ParliamentaryCost.where(txNomeParlamentar: params[:query]).order(vlrLiquido: :desc)
        
        render "csv/detalhes"
    end
    
    private

    def uploaded_file
        params.require(:csv_input).tempfile.path 
    end
    
end
