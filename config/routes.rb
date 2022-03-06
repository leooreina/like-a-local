Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'my-experiences', to: 'devise/sessions#my_experiences'
  end

  root to: 'experiences#index'
  resources :experiences do
    resources :orders
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
