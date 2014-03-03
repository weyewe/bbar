class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      
      t.integer :item_id 
      t.integer :user_id 
      
      
      # max 9.99 M 
      t.decimal :bid_price , :default        => 0,  :precision => 12, :scale => 2

      t.timestamps
    end
  end
end
