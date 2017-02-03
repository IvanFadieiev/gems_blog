Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :posts, exept: [:show, :edit, :delete]
  end
  resources :posts, exept: [:show, :edit, :delete, :new]
  root 'posts#index'
end
