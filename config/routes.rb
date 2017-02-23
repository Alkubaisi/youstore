Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :storages do
    resources :bookings
  end
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  root to: 'pages#home'
   # get "/profile", to: "pages#profile"
  get "/dashboard", to: "users#dashboard"
  get "/about", to: "pages#about"
  resources :results


end
