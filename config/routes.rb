Rails.application.routes.draw do
  resources :storages
  devise_for :users
  root to: 'storages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
