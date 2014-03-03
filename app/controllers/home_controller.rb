class HomeController < ApplicationController
  skip_filter :authenticate_user!, :only => [ :about, :index]
  
  def index
    @item = Item.first 
    @bids = @item.top_bids( 10 )
    @total_bid = Bid.where(:item_id => @item.id).count 
  end
end
