Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  resources :dinosaurs, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create, :update]
  end
end
