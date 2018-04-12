Rails.application.routes.draw do
  get 'services/index'
  
  root 'services#index'
end
