# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/next', to: 'launches#next'
  get '/latest', to: 'launches#latest'
  get '/past', to: 'launches#past'
  get '/upcoming', to: 'launches#upcoming'
end
