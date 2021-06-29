require 'rails_helper'

describe 'User visit homepage' do
    it "- Should be able access home page" do
        visit root_path

        expect(current_path).to eq(root_path)
        expect(page).to have_text("Ranking dos gastos dos Deputados")
        expect(page).to have_text("Vamos descobrir quem foi o deputado que mais gastou no RJ")
        expect(page).to have_text("Faça upload do arquivo para análise")
        expect(page).to have_css('input#csv_input')    
        expect(page).to have_button("Enviar")    
    end
    
end