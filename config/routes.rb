Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :drivers
  devise_for :passengers
  resources :journeys, only: %i[new create destroy show edit udpate index] do
    resources :reservations
  end
  resources :passengers, only: %i[new create destroy show]
  resources :drivers, only: %i[show]
  get 'pages/login', to: 'pages#login', as: :login
  get 'pages/signup', to: 'pages#signup', as: :signup
  get 'pages/driver', to: 'pages#driver', as: :driver_page
end
