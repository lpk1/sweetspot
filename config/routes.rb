Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :spots do
    resources :spot_bookings, only: [:create, :new]
    resources :spot_reviews, only: [:create, :new]
  end

  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
