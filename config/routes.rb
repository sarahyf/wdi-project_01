Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  resources :events
  resources :tasks, except: [:edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
