Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users do
    resources :preparations, only: [:new, :create, :destroy]
    resources :steps, only: [:new, :create, :destroy]
  end
  resources :recipes
end
