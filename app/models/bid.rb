class Bid < ActiveRecord::Base
  
  validates_presence_of :user_id, :item_id, :bid_price 
  
  validate :bid_price_should_not_be_zero
  
  def bid_price_should_not_be_zero
    return if not bid_price.present? 
    
    if bid_price <= BigDecimal('0')
      self.errors.add(:bid_price, "Can't be less than 0")
      return self
    end
      
  end
  
  def self.create_object params
    new_object = self.new
    new_object.user_id = params[:user_id]
    new_object.item_id = params[:item_id]
    new_object.bid_price = BigDecimal( params[:bid_price])
    new_object.save 
    
    return new_object 
  end
end
