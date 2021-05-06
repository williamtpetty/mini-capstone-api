Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "all_tomato_path" => "products#all_tomato_data"
  get "first_tomato_path" => "products#pull_first_tomato"
  get "last_tomato_path" => "products#pull_last_tomato"
  
end
