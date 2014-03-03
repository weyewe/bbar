# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


seller_1 = User.new
seller_1.email = 'seller@gmail.com'
seller_1.password = 'seller1234'
seller_1.password_confirmation = 'seller1234'
seller_1.save 

buyer_1  = User.new 
buyer_1.email = 'buyer@gmail.com'
buyer_1.password = 'buyer1234'
buyer_1.password_confirmation = 'buyer1234'
buyer_1.save

item_1 = Item.new
item_1.seller_id = seller_1.id 
item_1.title   = "Amazonia"
item_1.description = "This is an Authentic Hermes Amazonia Brown Buffalo Leather Garden Party MM Tote." + 
                      " Crafted from a natural rubber compound only found from the Hevea Brasiliensis Tree in the Amazonian Jungles in Brazil. "+ 
                      "This rubber compound allows the bag to be tremendously durable, waterproof and allows it to have a patina over time." + 
                      " This bag has developed some patina already. This will be a great addition to any Hermes Fans."
                      
item_1.main_image_url = ''

item_1.save 


puts "seller1 is created" if not seller_1.nil?
puts "buyer1 is created" if not buyer_1.nil?
puts "item1 is created" if not item_1.nil? 

11.times.each do |x|
  bid = Bid.new 
  bid.item_id =  item_1.id
  bid.user_id = seller_1.id 
  bid.bid_price = BigDecimal("1000")* x
  bid.save 
end


