Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index"
  # displays all products
  post "/products" => "products#create"
  # route to create method
  get "/products/:id" => "products#show"
  # url segment parameter displays an individual tomato
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  get "/suppliers/:id" => "suppliers#show"
  patch "suppliers/:id" => "suppliers#update"
  patch "suppliers/:id" => "suppliers#destroy"
end
