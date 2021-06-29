require 'rails_helper'

describe 'User upload csv file' do
    it "- Should be able upload csv file" do
        visit root_path
        attach_file 'csv_input', Rails.root.join('tmp/mock.csv')
        click_on 'Enviar'

        expect(current_path).to eq(csv_resultado_path)
        expect(page).to have_text("Importado com sucesso !")
        expect(page).to have_text("Relatório de gastos")
        expect(page).to have_text("Nome do Parlamentar")
        expect(page).to have_text("Estado")
        expect(page).to have_text("Total Gasto")
    end
    
    it "- Should be able view results page" do
        visit root_path
        attach_file 'csv_input', Rails.root.join('tmp/mock.csv')

        expect { click_on 'Enviar' }.to change {ParliamentaryCost.count}.by(7)
        expect(page).to have_link("Benedita da Silva")
        expect(page).to have_text("RJ")
        expect(page).to have_text("R$ 37.969,62")

    end

    it "- Should be able view only RJ parliamentary results" do
        visit root_path
        attach_file 'csv_input', Rails.root.join('tmp/mock.csv')
        click_on 'Enviar'

        expect(page).to_not have_text("Fausto Pinato")
        expect(page).to_not have_text("SP")
        expect(page).to_not have_text("R$ 2630.77")

    end

end