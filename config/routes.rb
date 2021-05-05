Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "tomato_path" => "products#single_tomato_data"
  
end
