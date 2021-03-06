Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'callbacks' }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  root "welcome#home"

  resources :users do
    resources :summons, only: [:new, :create, :show, :index]
  end

  resources :demons do
    resources :summons, only: [:new, :create]
  end

  resources :summons
end
