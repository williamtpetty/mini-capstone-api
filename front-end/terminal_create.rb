require "http"

system "clear"

puts "Please input a tomato type:"
type = gets.chomp

puts "Please enter a tomato price, whole numbers only:"
price = gets.chomp

puts "Please enter a tomato picture url:"
url = gets.chomp

puts "Please enter a description of the tomato:"
description = gets.chomp

# NOTE: The use of post below forces the terminal to route through the 'post "/products" => "products#create"', if you were to put 'get' instead of post it would list all products.

user_create = HTTP.post("http://localhost:3000/products", :params => {name: "#{type}", price: "#{price}", image_url: "#{url}", description: "#{description}"})
