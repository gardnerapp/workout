Rails.application.routes.draw do
  resources :videos
  resources :inquiry, only: %i[new create]
  resources :daily_workouts, only: %i[new create], path: '/workouts'
  root 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
