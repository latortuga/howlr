Rails.application.routes.draw do
  resources :wolves, only: [:new, :create, :index]

  root to: 'wolves#index'
end
