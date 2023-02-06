Rails.application.routes.draw do
  root "firstapp#index"
  resources :firstapps
end
