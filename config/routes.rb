Rails.application.routes.draw do

  get 'contacts/new'
  get 'schedule/index'
  root 'blogs#index'
  get 'about' => 'blogs#about'
  resources :blogs, only: [:index, :show] do
    resources :blog_comments, only: [:create, :destroy]
  end
  get 'fees' => 'fees#index'
  get 'fees/:id' => 'fees#show', as: 'fee'
  get 'schedules' => 'schedules#index'
  get 'schedules/:id' => 'schedules#show', as: 'schedule'
  get 'contacts' => 'contacts#new'
  get 'contacts/complete' => 'contacts#complete'
  resources :contacts, only: [:new, :create]

  devise_for :directors
  namespace :directors do
    resources :blogs
    resources :fees
    resources :schedules
    resources :contacts, only: [:index, :update, :edit, :show, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
