require 'rails_helper'

describe 'User user view total parliamentary details costs' do
    it "- Should be able view parliamentary details page" do
        visit root_path
        attach_file 'csv_input', Rails.root.join('tmp/mock.csv')
        click_on 'Enviar'
        click_on 'Benedita da Silva'

        expect(current_path).to eq("/csv/detalhes/Benedita%20da%20Silva")
        expect(page).to have_text("Detalhe dos gastos")
        expect(page).to have_text("Nome do Parlamentar")
        expect(page).to have_text("Estado")
        expect(page).to have_text("Valor")
        expect(page).to have_text("Data")
        expect(page).to have_text("Estabelecimento")
        expect(page).to have_text("Link para a nota")

    end
    
    it "- Should be able view selected parliamentary cost details" do
        visit root_path
        attach_file 'csv_input', Rails.root.join('tmp/mock.csv')
        click_on 'Enviar'
        click_on 'Benedita da Silva'

        expect(page).to have_text("Benedita da Silva")
        expect(page).to have_link("http://camara.leg.br/cota-parlamentar/nota-fiscal-eletronica?ideDocumentoFiscal=7064268")
        expect(page).to have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/188/2020/7091565.pdf")
        expect(page).to have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/188/2020/7050116.pdf")
        expect(page).to have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/188/2020/7001913.pdf")
        expect(page).to have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/188/2020/7024413.pdf")
        expect(page).to have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/188/2020/7039740.pdf")
        expect(page).to have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/188/2020/7060786.pdf")

        expect(page).to_not have_link("http://camara.leg.br/cota-parlamentar/nota-fiscal-eletronica?ideDocumentoFiscal=7011225")
        expect(page).to_not have_link("http://camara.leg.br/cota-parlamentar/nota-fiscal-eletronica?ideDocumentoFiscal=7039180")
        expect(page).to_not have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/2917/2020/7116195.pdf")
        expect(page).to_not have_link("http://camara.leg.br/cota-parlamentar/nota-fiscal-eletronica?ideDocumentoFiscal=7133764")
        expect(page).to_not have_link("https://www.camara.leg.br/cota-parlamentar/documentos/publ/2917/2020/6995087.pdf")

    end

end