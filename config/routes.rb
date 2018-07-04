Rails.application.routes.draw do
  root 'home#index'

  get '/search', to: 'search#index'

  resources :apps, only: :show
end
