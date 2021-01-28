Rails.application.routes.draw do
  get 'manus/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  resources :musical_instruments, only: %i[index show]
   get :search, to: 'musical_instruments#search'

   get :set_page, to: 'musical_instruments#set_page'
   resources :categories, only: %i[index show]
end
