Rails.application.routes.draw do
  resources :frats, except: :index
  resources :students
  get '/frat_row', to: 'frats#index', as: 'frat_row'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
