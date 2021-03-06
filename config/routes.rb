Rails.application.routes.draw do

  namespace :admin do
    resources :restaurants, only: [:index]
  end

  resources :restaurants do
    collection do
      get "top"
    end

    member do
      get "chef"
    end

    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
