Rails.application.routes.draw do

  root 'blogs#index'
  get 'about' => 'blogs#about'
  resources :blogs, only: [:index, :show]
  get 'fees' => 'fees#index'
  get 'fees/:id' => 'fees#show', as: 'fee'

  devise_for :directors
  namespace :directors do
    resources :blogs
    resources :fees
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
