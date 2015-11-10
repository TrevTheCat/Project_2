Rails.application.routes.draw do
  resources :categories
  resources :lists
  devise_for :users
  resources :users

  root 'lists#index'

  resources :items do
      member do
        put 'move/:direction', to: 'items#move_in_list', as: 'move_in_list'
      end
    end
  post "/list/:id/comments", to:'lists#comment', as: :comment_list
end
