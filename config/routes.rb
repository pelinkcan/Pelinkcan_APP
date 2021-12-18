Rails.application.routes.draw do
  root to: 'homes#toppage'
  devise_for :users
  resources :link_tags
  resources :links
  resources :users
  post 'users/:id/edit' => 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
