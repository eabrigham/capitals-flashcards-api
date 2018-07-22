# frozen_string_literal: true

Rails.application.routes.draw do
  resources :quizzes, except: %i[new edit]
  # removed cards routes b/c client access unneeded for this version
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  # will need a custom route to coonect new user with all cards
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
