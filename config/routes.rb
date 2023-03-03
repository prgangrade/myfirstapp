Rails.application.routes.draw do
  
  # root "sessions#new"
  #  root "firstapps#index"
  root "students#index"
  #  resources :firstapps
  # #  get '/search', to: 'firstapps#search'
  #  resources :sessions
   resources :students
  # root 'ones#index'
  # resources :ones

end
