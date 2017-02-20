Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :storages do
    resources :bookings
  end
  devise_for :users
  root to: 'storages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
