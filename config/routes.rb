Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :spots do
    resources :spot_bookings, only: [:create, :new]
    resources :spot_reviews, only: [:create, :new]
  end

  get 'users/bookings', to: "users#bookings", as: :user_show_bookings
  get 'users/listings', to: "users#listings", as: :user_show_listings

  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
