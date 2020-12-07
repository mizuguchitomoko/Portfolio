Rails.application.routes.draw do

  get 'contacts/new'
  get 'schedule/index'
  root 'blogs#index'
  get 'about' => 'blogs#about'
  resources :blogs, only: [:index, :show]
  get 'fees' => 'fees#index'
  get 'fees/:id' => 'fees#show', as: 'fee'
  get 'schedules' => 'schedules#index'
  get 'contacts' => 'contacts#new'
  get 'contacts/complete' => 'contacts#complete'
  resources :contacts, only: [:new, :create]

  devise_for :directors
  namespace :directors do
    resources :blogs
    resources :fees
    resources :schedules
    resources :contacts, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
