Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
    get 'logout', to: 'devise/sessions#destroy'
  end
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  resources :users, only: [:index,:show,:edit]
end
