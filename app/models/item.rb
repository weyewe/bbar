class Item < ActiveRecord::Base
  has_many :bids 
  has_many :users, :through => :bids
  
  
  def top_bids( limit )
    bids.order("bid_price DESC").limit( limit ) 
  end
end
