Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items
  resources :items do
    resources :messages, only: :create
    collection do
      get 'search'
    end
  end
end
