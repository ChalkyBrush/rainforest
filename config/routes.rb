Rainforest::Application.routes.draw do



resources :products
resources :users, :only => [:new, :create]
resources :sessions, :only => [:new, :create, :destroy]

resources :products do
    resources :reviews, :except => [:index]
end
root :to => "products#index"



end
