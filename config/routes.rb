Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :drivers
  devise_for :passengers
  resources :journeys, only: %i[new create destroy show edit udpate index]
  resources :passengers, only: %i[new create destroy show]
  resources :resevations, only: %i[new create destroy show]
end
