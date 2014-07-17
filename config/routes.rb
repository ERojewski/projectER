Rails.application.routes.draw do
  devise_for :users
  root "home#index"

get 'post/:id' => 'posts#index'
get 'post/:id' => 'posts#index', as: :awesome_path
delete 'post/:id' => 'posts#destroy'
!
resources :comments
resources :posts
resources :posts, only: [:index]
end
