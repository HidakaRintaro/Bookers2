Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :books, only: [:index, :show, :update, :edit, :create, :destroy]
  resources :users, only: [:index, :show, :update, :edit]
  get 'home/about' => 'homes#about', as: 'about'
end