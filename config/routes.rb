Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      resources :beats, only: [:index, :show, :create, :update]
      resources :comments, only: [:create]
      resources :beat_pads
      resources :pads
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
