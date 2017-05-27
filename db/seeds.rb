# User.create!([
#   {name: "Marco", email: "marco@gmail.com", password_digest: "$2a$10$GY4BQqQ6E1/tXsY2.6d2gu3Yl3PM4iULxwkpARIj7b2iIG3vGIMvK"},
#   {name: "Bob", email: "bob@bob.com", password_digest: "$2a$10$RrmeyXB00BLHgcMc3hkxo.QH8vJaEqp5EgLR3OgqwADddKLHFo.aC"},
#   {name: "Bill", email: "bill@bill.com", password_digest: "$2a$10$KJm5FraO3hqjJf5ABtwmYeZaczw6OWqdquBVLx41KkPGZC302gGpK"},
#   {name: "Anthony", email: "Anthony@gmail.com", password_digest: "$2a$10$nwrpAUVr9LPV4YvydBFlnOFbHT3yF5Tev4RrtiDInDXNHwwgibroi"},
#   {name: "Joann", email: "Joann@gmail.com", password_digest: "$2a$10$Rosk4m38KITxip.nPY/GT.5REDMiQmgDyq5xOtvygSS1goaTttAVC"},
#   {name: "Michael ", email: "michael@gmail.com", password_digest: "$2a$10$DIl.z.0eE3OrRG3hVDRtL.TMcgjjjJNyTCagFrLFZae2QYi1R/kd2"},
#   {name: "Joe", email: "Joe@Joe", password_digest: "$2a$10$czsuUudaHUHc0GuiUCV9JO.yjbB64QsxUP/oGxXOaC5jGLW5veCM2"}
# ])

# Order.create!([
#   {user_id: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, subtotal: 0, tax: 0, total: 0},
#   {user_id: 1, subtotal: 34900, tax: 2792, total: 37692},
#   {user_id: 1, subtotal: 232700, tax: 18616, total: 251316},
#   {user_id: 1, subtotal: 69800, tax: 5584, total: 75384},
#   {user_id: 1, subtotal: 103700, tax: 8296, total: 111996},
#   {user_id: 6, subtotal: 34900, tax: 2792, total: 37692}
# ])


# Supplier.create!([
#   {name: "Mercedes", email: "mercedes@email.com", phone: "7187778888"},
#   {name: "Ferrari", email: "ferrari@email.com", phone: "7187771234"},
#   {name: "Audi", email: "audi@email.com", phone: "7181112222"}
# ])

# Product.create!([
#   {name: "Mercedes C350", price: 39000, description: "4 door luxury sedan", supplier_id: 1},
#   {name: "Mercedes S550", price: 96600, description: "4 door luxury sedan", supplier_id: 1},
#   {name: "Mercedes E350", price: 53000, description: "4 door luxury sedan", supplier_id: 1},
#   {name: "Ferrari 458", price: 263553, description: "2 door sports car", supplier_id: 2},
#   {name: "Ferrari Enzo", price: 659330, description: "Very fast sports car", supplier_id: 2},
#   {name: "Audi R8", price: 162900, description: "2 door sports car", supplier_id: 3},
#   {name: "Audi A4", price: 34900, description: "4 door luxury sedan", supplier_id: 3},
#   {name: "Audi A7", price: 68800, description: "Sports Car", supplier_id: 3},
#   {name: "Mercedes E-Class Cabriolet", price: 62600, description: "2 door convertible ", supplier_id: 1}
# ])


# CartedProduct.create!([
#   {user_id: 1, product_id: 1, status: "ordered", quantity: 1, order_id: 1},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 2, order_id: 1},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 2, order_id: 1},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 2, order_id: 2},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 2, order_id: 3},
#   {user_id: 1, product_id: 10, status: "ordered", quantity: 1, order_id: 4},
#   {user_id: 1, product_id: 10, status: "ordered", quantity: 2, order_id: 5},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 2, order_id: 6},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 1, order_id: 8},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 2, order_id: 9},
#   {user_id: 1, product_id: 8, status: "ordered", quantity: 1, order_id: 9},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 2, order_id: 10},
#   {user_id: 1, product_id: 9, status: "ordered", quantity: 1, order_id: 11},
#   {user_id: 1, product_id: 10, status: "ordered", quantity: 1, order_id: 11},
#   {user_id: 1, product_id: 8, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 9, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 10, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 9, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 9, status: "removed", quantity: 2, order_id: nil},
#   {user_id: 1, product_id: 9, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 10, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 9, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 3, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 10, status: "removed", quantity: 1, order_id: nil},
#   {user_id: 1, product_id: 8, status: "carted", quantity: 2, order_id: nil},
#   {user_id: 6, product_id: 9, status: "ordered", quantity: 1, order_id: 12},
#   {user_id: 6, product_id: 10, status: "removed", quantity: 1, order_id: nil}
# ])
# Category.create!([
#   {name: "luxury"},
#   {name: "sport"},
#   {name: "4door"},
#   {name: "2door"},
#   {name: "convertible"}
# ])
# CategoryProduct.create!([
#   {product_id: 1, category_id: 1},
#   {product_id: 1, category_id: 3},
#   {product_id: 2, category_id: 2},
#   {product_id: 2, category_id: 4},
#   {product_id: 3, category_id: 1},
#   {product_id: 3, category_id: 3},
#   {product_id: 6, category_id: 2},
#   {product_id: 6, category_id: 4},
#   {product_id: 7, category_id: 1},
#   {product_id: 7, category_id: 3},
#   {product_id: 8, category_id: 2},
#   {product_id: 8, category_id: 4},
#   {product_id: 9, category_id: 1},
#   {product_id: 9, category_id: 3},
#   {product_id: 10, category_id: 2},
#   {product_id: 11, category_id: 1},
#   {product_id: 11, category_id: 4},
#   {product_id: 11, category_id: 5},
#   {product_id: 10, category_id: 3}
# ])
# Image.create!([
#   {url: "https://di-uploads-pod3.dealerinspire.com/rbmofalpharettamercedesbenz/uploads/2015/10/2016-Mercedes-Benz-S550.jpg", product_id: 1},
#   {url: "http://auto.ferrari.com/en_US/wp-content/uploads/sites/7/2014/10/458-speciale-thumb.jpg", product_id: 2},
#   {url: "http://blogmedia.dealerfire.com/wp-content/uploads/sites/165/2016/05/10210333/2015-Mercedes-Benz-C-Class-Sedan-Side-View_o.jpg", product_id: 3},
#   {url: "https://exra.exoticsracing.com/upload/site/pages/drive-ferrari/Ferrari458_3.jpg", product_id: 2},
#   {url: "https://s-media-cache-ak0.pinimg.com/originals/d7/55/cf/d755cf5c6a3ce65976605ca6d6ccfe86.jpg", product_id: 3},
#   {url: "https://i.ytimg.com/vi/REdVIfnPR2s/maxresdefault.jpg", product_id: 1},
#   {url: "http://www.cstatic-images.com/stock/900x600/1426624524488.jpg", product_id: 2},
#   {url: "http://2.bp.blogspot.com/-x-5qBG1_Heg/VIL-JX2qMjI/AAAAAAAACD4/Ucul9TXgL3k/s1600/Ferrari-Enzo-0.jpg", product_id: 6},
#   {url: "https://assets.mbusa.com/vcm/MB/DigitalAssets/Vehicles/ClassLanding/2017/E/SDN/Categories/Headers/2016-E-CLASS-SDN-TSR-D.jpg", product_id: 7},
#   {url: "https://s-media-cache-ak0.pinimg.com/originals/4f/52/53/4f5253770c3104cd9bc25e5439b99394.jpg", product_id: 8},
#   {url: "http://blog.caranddriver.com/wp-content/uploads/2010/09/2011-Audi-R8-GT.jpg", product_id: 8},
#   {url: "http://www.moibbk.com/images/audi-a4-white-4.jpg", product_id: 9},
#   {url: "https://cnet4.cbsistatic.com/img/2I7ds0qKPwIVlzHTxv7ClQLu8bU=/770x433/2015/11/16/c6a99093-0bd3-4e5a-aa0e-344ba43b4174/00-2016-audi-a7.jpg", product_id: 10},
#   {url: "http://www.zercustoms.com/news/images/Audi/th1/Audi-A7-3.jpg", product_id: 10},
#   {url: "https://assets.mbusa.com/vcm/MB/DigitalAssets/Vehicles/ClassLanding/2017/E/CPE-CAB/Features/2017-E-CABRIOLET-CLASS-PAGE-001-CCF-D.jpg", product_id: 11}
# ])


