Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :storages do
    resources :bookings
  end
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]
  root to: 'pages#home'
  get "/about", to: "pages#about"
  get "/profile", to: "pages#profile"
  resources :results



end
