# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home', to: 'test#home'

  get 'ping', to: 'ping#index'
  root 'test#home'
end
