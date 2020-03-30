Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboards#index'

  get 'dashboard', to: 'dashboards#index'

  get 'test', to: 'tests#index'

  resources :dashboards
  resources :tracks
  resources :categories
  resources :artists
end
