Rails.application.routes.draw do
  root 'photos#index'
  resources :photos
    resources :comments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
