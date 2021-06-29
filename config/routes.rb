Rails.application.routes.draw do
  root 'home#index'
  resources :csv, only: [:create]
  get 'csv/resultado', to: 'csv#resultado'
  get '/csv/detalhes/:query', to: 'csv#detalhes'

end
