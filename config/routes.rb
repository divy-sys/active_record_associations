Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do
    # root to: "devise/sessions#new"
    get "sign_in", :to => "devise/sessions#new"
  end

  root "home#index"
end
