Rails.application.routes.draw do
  devise_for :users
  resources :experiences do
    resources :orders
  end
  root to: 'experiences#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
