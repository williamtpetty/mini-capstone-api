require "http"

system "clear"

snatch = HTTP.get("http://localhost:3000/products")

products = snatch.parse

pp products