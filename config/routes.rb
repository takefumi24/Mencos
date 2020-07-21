Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks',
  registrations: 'users/registrations'
  }
  resources :posts, only: [:index, :new, :show]
  resources :users, only: [:show, :edit, :update]
end
