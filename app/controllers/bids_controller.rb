class BidsController < ApplicationController
  
  def new
    @item = Item.find_by_id params[:item_id ] 
  end
  
  def create
    @item = Item.find_by_id params[:item_id]
    params[:bid][:user_id] = current_user.id
    params[:bid][:item_id] = params[:item_id]
    
    @bid = Bid.create_object( params[:bid ])
    
    if @bid.errors.size !=0 
      puts "FUCK, there is error\n"*10
      @bid.errors.messages.each {|x| puts x }
    end
     
  end
end
