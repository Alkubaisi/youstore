Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :storages do
    resources :bookings do
      member do
        post "/accept", to: "bookings#accept"
        post "/decline", to: "bookings#decline"
      end
    end
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get "/dashboard", to: "users#dashboard"
  get "/about", to: "pages#about"
  resources :results
end
