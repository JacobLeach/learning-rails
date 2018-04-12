Rails.application.routes.draw do
  get 'services/index'

  resources :services
  
  root 'services#index'
end
