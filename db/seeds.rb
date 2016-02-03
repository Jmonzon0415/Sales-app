
User.create!([
  {email: "joe@gmail.com", encrypted_password: "$2a$10$5rvWBnLoUy595zfGs1ETZO0a5FWd2FefY22cXFfWcWJiFM3JGeZrO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-27 02:20:44", last_sign_in_at: "2016-01-27 02:20:44", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "josh@gmail.com", encrypted_password: "$2a$10$/RwpFSpF1eJLyT1u8r89F.0EDDyezR4R/iEbOJTZXEclfGLQTEKlS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-01-27 23:32:39", last_sign_in_at: "2016-01-27 23:11:14", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Image.create!([
  {url: "https://img0.etsystatic.com/106/2/11678836/il_570xN.868078490_e4qu.jpg", product_id: 1},
  {url: "http://www.simplebites.net/wp-content/uploads/2010/08/3-Blueberry-Syrup-e1280951606203.jpg", product_id: 2},
  {url: "http://i.dailymail.co.uk/i/pix/2013/05/27/article-2331770-1A077A93000005DC-76_306x387.jpg", product_id: 3}
])
Product.create!([
  {name: "Apple Bacon Syrup ", price: "12.99", description: "Sweet Apple with salty savory bacon", instock: nil, supplier_id: 1},
  {name: "Blueberry Surprise", price: "9.99", description: "100% vermont made, intense after after taste of Blueberrys.", instock: nil, supplier_id: 2},
  {name: "Standard American Maple", price: "5.99", description: "100% Vermont Made Sweetness", instock: nil, supplier_id: 3},
  {name: "Mrs Butterworth", price: "1.99", description: "Seriously? We in the craft syrup community judge you... ", instock: nil, supplier_id: 2}
])
Supplier.create!([
  {name: "Vermont Inc ", email: "Vinc@gmail.com", phone: "(555) 666-2138"},
  {name: "Josh's Sizzurp", email: "Jmonzon0415@gmail.com", phone: "(248) 766-6573"},
  {name: "Paul Bunyon & Co. ", email: "PB@msn.com", phone: "(555)248-7676"}
])
