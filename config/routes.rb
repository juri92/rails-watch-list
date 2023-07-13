Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
   resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end


# Rails.application.routes.draw do
#   root to: 'lists#index'
#   resources :lists, only: [:index, :show, :new, :create]
# end
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :movies, only: [:index, :show, :new, :create]

    #   root to: 'lists#index'
    #   resources :bookmarks, only: [:index, :new, :create]
    # end
    # resources :bookmarks, only: [:destroy]
