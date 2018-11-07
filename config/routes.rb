Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :users, only: [:show]
  resources :events, :tasks, :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
