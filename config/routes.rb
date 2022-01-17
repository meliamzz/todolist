Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lists do
    member do
      resources :tasks
    end
  end
end
