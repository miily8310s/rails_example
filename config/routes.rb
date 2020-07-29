# frozen_string_literal: true

Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destory'
  namespace :admin do
    resources :users
  end
  root to: 'tasks#index'
  resources :tasks
end
