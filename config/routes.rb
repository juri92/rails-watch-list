Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :movies, only: [:index, :show, :new, :create]
    resources :lists do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: [:destroy]
  end
