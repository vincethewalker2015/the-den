Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :contacts
  get '/about', to: 'pages#about'
  root 'pages#home'

end
