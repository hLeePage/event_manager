Rails.application.routes.draw do
  devise_for :users
  resources :events do
    get :join, to: 'events#join', as: 'join'
  end

  root to: "events#index"

  get 'tags/:tag', to: 'events#index', as: :tag


end
