# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'

  resources :listings

  root 'welcome#index'
end
