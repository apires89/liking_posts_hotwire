Rails.application.routes.draw do
   resources :posts do
    resource :like, module: :posts, only: [:update]
  end
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
