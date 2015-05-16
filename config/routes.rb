Rails.application.routes.draw do

  get 'event/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: "users#index"
    resources :users
end
