Rails.application.routes.draw do
  get 'registration/new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
end
