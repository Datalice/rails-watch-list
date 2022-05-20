Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    #resources :movies
    #resources :movies, only: [:index, :show] do
 root "lists#index"

  resources :lists, only: [:index, :create, :show, :new] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
  # Defines the root path route ("/")
