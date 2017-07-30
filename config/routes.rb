Rails.application.routes.draw do

  get 'contact', to: 'pages#contact'

  get 'hello', to: 'pages#welcome', as: :welcome

  get 'about', to: 'pages#about'

  get 'create', to: 'restaurants#create'

  root to: 'pages#home'

  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
