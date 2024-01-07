Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signup' => 'users#new'
  get 'sessions/login', to: 'sessions#new'
  post 'sessions/login', to: 'sessions#create'
  delete 'sessions/logout', to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
