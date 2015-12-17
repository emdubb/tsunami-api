Rails.application.routes.draw do
  root 'api#index'

  namespace :api do
    resources :users, only: [:index, :show, :create, :update, :destroy] do
        resources :pins, only: [:create, :update, :destroy]
    end
    resources :maps, only: [:index, :show, :create, :update, :destroy]
    resources :cities, only: [:index, :show, :create, :update, :destroy]

    get 'me', to: 'users#me'
    post 'token', to: 'users#token'
  end


end
