Blocitoff::Application.routes.draw do
  devise_for :users
  resources :todos, only: [:new, :create, :show]

  root to: 'welcome#index'
end
