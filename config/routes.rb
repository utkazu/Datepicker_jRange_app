Rails.application.routes.draw do
  root to: 'tasks#index'
  get 'search', to: 'tasks#search'
  get 'result', to: 'tasks#result'
  resources :tasks, only: [:new, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
