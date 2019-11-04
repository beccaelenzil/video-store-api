Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#zomg"
  get "/zomg", to: "application#zomg"

  resources :movies, only: [:index, :show]
  resources :customers, only: [:index, :show]
end
