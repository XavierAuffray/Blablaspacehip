Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :passengers
  resources :passengers, only: %i[new create destroy show]
  resources :resevations, only: %i[new create destroy show]
  devise_for :drivers do
    resources :journeys, only: %i[new create destroy show edit udpate index]
  end
end
