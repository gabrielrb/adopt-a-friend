Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'animals#index'

  resources :animals do
    resources :adoptions, only: :create
  end
  resources :adoptions, only: :index
end
