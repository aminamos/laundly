Rails.application.routes.draw do
  resources :roles
  # resources :homes, only: [:index]
  get '/', to: 'homes#index', as: 'index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    
  }
  resources :availabilities
  resources :stores
  resources :loads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
