Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :libraries, param: :slug
      resources :books, param: :slug
      resources :genres, param: :slug
      resources :authors, param: :slug
    end
  end
end
