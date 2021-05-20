Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index"
  # displays all products
  post "/products" => "products#create"
  # route to create method
  get "/products/:id" => "products#show"
  # url segment parameter displays an individual tomato
  patch "/products/:id" => "products#update"
  # url segment parameter allows user to be selected and updated by id
  delete "/products/:id" => "products#destroy"
  # url segment parameter allows user to delete selection by id

  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  get "/suppliers/:id" => "suppliers#show"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  get "/images" => "images#index"
  post "/images" => "images#create"
  get "/images/:id" => "images#show"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"

  # User create route
  post "/users" => "users#create"

  # User login route
  post "/sessions" => "sessions#create"

end
