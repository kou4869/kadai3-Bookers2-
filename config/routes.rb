Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'users/show'
  get 'users/index'
  get 'users/edit'
  get 'books/index'
  get 'books/show'

  get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
