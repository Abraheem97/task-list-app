# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lists#index'
  resources :lists do
    resources :tasks
  end
end
