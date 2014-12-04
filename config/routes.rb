Blocitoff::Application.routes.draw do
  resources :todos, only: [:new, :create, :show]

  root to: 'welcome#index'
end
