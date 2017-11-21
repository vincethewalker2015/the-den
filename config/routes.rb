Rails.application.routes.draw do
  
  devise_for :users
  resources :contacts
  get '/about', to: 'pages#about'
   root 'pages#home'

  

  
end
