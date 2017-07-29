Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'

  get 'contact', to: 'pages#contact'

  get 'hello', to: 'pages#welcome', as: :welcome

  get 'about', to: 'pages#about'

  root to: 'pages#home'

  get 'restaurants/:id', to: 'restaurants#show'

  post '/restaurants', to: 'restaurants#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
