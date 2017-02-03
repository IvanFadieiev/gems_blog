Rails.application.routes.draw do
  resources :categories do
    resources :posts, exept: [:show, :edit, :delete]
  end
  resources :posts, exept: [:show, :edit, :delete, :new]
  root 'posts#index'
end
