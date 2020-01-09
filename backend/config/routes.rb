Rails.application.routes.draw do
  resources :users
  resources :colors
  resources :dinos
  resources :user_cards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
