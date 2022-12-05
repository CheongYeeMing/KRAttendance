Rails.application.routes.draw do
  resources :attendances
  resources :events
  resources :ccas
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
  get "home", to: "home#index"
  get "profile", to: "home#profile"
  get "residents", to: "residents#index"
end
