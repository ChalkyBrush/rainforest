Rainforest::Application.routes.draw do

  get "reviews/show"

  get "reviews/new"

  get "reviews/edit"

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  get "users/new"

  get "users/create"

resources :products
resources :users, :only => [:new, :create]
resources :sessions, :only => [:new, :create, :destroy]

resources :products do
    resources :reviews, :except => [:index]
end
root :to => "products#index"



end
