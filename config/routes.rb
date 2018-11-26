Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :contacts
  
  root 'welcome#index'

end
