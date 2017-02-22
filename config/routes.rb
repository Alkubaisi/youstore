Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :storages do
    resources :bookings
  end
  resources :users, only: [:show]
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'storages#index'
  get "/about", to: "pages#about"
  get "/resultspage", to: "pages#resultspage"
  get "/profile", to: "pages#profile"

end
