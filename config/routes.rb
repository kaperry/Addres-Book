Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :contacts do
    resources :events
  end 
  root 'welcome#index'

end
