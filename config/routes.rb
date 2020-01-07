Rails.application.routes.draw do
  resources :roles
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :availabilities
  resources :stores
  resources :loads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
