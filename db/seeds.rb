# Image.create!([
#   {url: "https://cdn.shopify.com/s/files/1/1537/5553/products/00869_1024x10\n24.jpg?v=1617898354", product_id: 1},
#   {url: "https://edge.bonnieplants.com/www/tiny/uploads/20200810205218/better-boy-tomato1.jpg", product_id: 2},
#   {url: "https://paramountseeds.com/wp-content/uploads/2019/08/granadero.jpg", product_id: 3},
#   {url: "https://www.specialtyproduce.com/sppics/1800.png", product_id: 4},
#   {url: "https://i2.wp.com/www.gardeningchannel.com/wp-content/uploads/2020/06/gardeningchannel-guide-to-growing-celebrity-tomatoes.jpg?w=730&ssl=1", product_id: 5},
#   {url: "https://edge.bonnieplants.com/www/tiny/uploads/20200810205311/atkinson-tomato.jpg", product_id: 6},
#   {url: "https://edge.bonnieplants.com/www/tiny/uploads/20200810204406/bonnie-centennial-tomato.jpg", product_id: 7},
#   {url: "https://edge.bonnieplants.com/www/tiny/uploads/20200810205328/early-girl-tomato.jpg", product_id: 9},
#   {url: "https://edge.bonnieplants.com/www/tiny/uploads/20200810205320/patio-tomato.jpg", product_id: 10},
#   {url: "https://edge.bonnieplants.com/www/tiny/uploads/20201007175424/TOM14-17823.jpeg", product_id: 11},
#   {url: "https://images-na.ssl-images-amazon.com/images/I/61T9FOVfiYL._AC_SX569_.jpg", product_id: 12},
#   {url: "https://www.gardeningchannel.com/wp-content/uploads/2020/10/gardeningchannel-jet-star-tomato-factsheet.jpg", product_id: 1},
#   {url: "https://hosstools.com/wp-content/uploads/2020/10/better-boy-tomato.jpg", product_id: 2},
#   {url: "https://edge.bonnieplants.com/www/tiny/uploads/20200810205312/amelia-tomato.jpg", product_id: 13}
# ])
# Supplier.create!([
#   {name: "Bonnie's Plants", email: "buybonniesplants@gmail.com", phone_number: "901-555-2355"},
#   {name: "JJ's Plant Garden", email: "jjsplants@gmail.com", phone_number: "901-555-9922"},
#   {name: "R & J Feed", email: "rjfeedstore@yahoo.com", phone_number: "731-555-7782"}
# ])
# Product.create!([
#   {name: "Better Boy Tomato", price: "1.99", description: "One tomato plant, variety: Better Boy", inventory: 24, supplier_id: 2},
#   {name: "Brandywine Tomato", price: "10.99", description: "One pack of two tomato plants, variety: Brandywine, these are enormous once fully matured!", inventory: 8, supplier_id: 2},
#   {name: "Early Girl Tomato", price: "8.99", description: "A pair of two tomato plants, variety: Early Girl, full sun required", inventory: 12, supplier_id: 2},
#   {name: "Jetstar Tomato", price: "1.99", description: "One tomato plant, variety: Jetstar, a fan favorite!", inventory: 24, supplier_id: 1},
#   {name: "Roma Tomato", price: "0.99", description: "One tomato plant, variety: Roma, great for cooking!", inventory: 28, supplier_id: 1},
#   {name: "Atkinson Tomato", price: "3.99", description: "One tomator plant, variety: Atkinson", inventory: 12, supplier_id: 1},
#   {name: "Celebrity Tomato", price: "2.99", description: "One tomato plant, variety: Celebrity", inventory: 18, supplier_id: 1},
#   {name: "Patio Tomato", price: "9.77", description: "Pack of 4 tomato plants, variety: Patio, good for containers!", inventory: 3, supplier_id: 1},
#   {name: "Centenial Tomato", price: "2.77", description: "One tomato plant, variety: Centennial", inventory: 4, supplier_id: 1},
#   {name: "Jetsetter Tomato", price: "4.99", description: "One pack of two tomato plants, variety: Jetsetter. This is the improved version of our Jetstar, with less core and seeds!", inventory: 12, supplier_id: 1},
#   {name: "Little Napoli Roma Tomato", price: "14.0", description: "3 pack of tomato plants, variety: Little Napoli Roma. These are great for potting/patio growers!", inventory: 8, supplier_id: 2},
#   {name: "Amelia Tomato", price: "8.99", description: "3 pack of tomato plants, variety: Amelia. These are good garden tomatoes that need lots of sun!", inventory: 15, supplier_id: 3}
# ])
# Order.create!([
#   {user_id: 1, product_id: 1, quantity: 4, subtotal: "7.96", tax: "0.71", total: "8.68"},
#   {user_id: 1, product_id: 2, quantity: 3, subtotal: "5.97", tax: "0.54", total: "6.51"},
#   {user_id: 2, product_id: 3, quantity: 2, subtotal: "1.98", tax: "0.18", total: "2.16"},
#   {user_id: 2, product_id: 5, quantity: 3, subtotal: "8.97", tax: "0.81", total: "9.78"},
#   {user_id: 2, product_id: 12, quantity: 2, subtotal: "9.98", tax: "0.9", total: "10.88"},
#   {user_id: 2, product_id: 12, quantity: 3, subtotal: "14.97", tax: "1.35", total: "16.32"},
#   {user_id: 3, product_id: 11, quantity: 2, subtotal: "28.0", tax: "2.52", total: "30.52"},
#   {user_id: 3, product_id: 13, quantity: 4, subtotal: "35.96", tax: "3.24", total: "39.2"}
# ])
# User.create!([
#   {name: "Jane Doe", email: "janedoe@gmail.com", password_digest: "$2a$12$GrUMxMkzL2uc8PB9eD1bN.4oxqRVb.Xm04lJ6V1eJz3k0fJN9Nq1m", admin: false},
#   {name: "Hugh Jass", email: "hughjass@gmail.com", password_digest: "$2a$12$l/SVni3h03ZK9LpHWtDfLeyBhR5DPsp8dlfi55ZfBJacQzC6Mh.BK", admin: false},
#   {name: "William Petty", email: "william.petty@me.com", password_digest: "$2a$12$hQr8o5fL2hNBkkmi1XoJVeiqXEtu/DDSuVStDgfbIwub8SyuurpCS", admin: true}
# ])
