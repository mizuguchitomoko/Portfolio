Rails.application.routes.draw do

  root 'blogs#index'
  get 'about' => 'blogs#about'
  resources :blogs, only: [:index, :show]
  get 'fees' => 'fees#index'
  

  devise_for :directors
  namespace :directors do
    resources :blogs
    resources :fees, only: [:new, :create, :index, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
