class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      
      t.integer :seller_id
      t.string :title
      t.text :description 
      
      t.text :main_image_url 
      
      
      # we only sell bag
      # in the long run, max price = 9.99 M 
      t.decimal :market_price, :default        => 0,  :precision => 10, :scale => 2
      t.decimal :minimum_price, :default        => 0,  :precision => 10, :scale => 2
      t.decimal :strike_price , :default        => 0,  :precision => 10, :scale => 2
      t.timestamps
    end
  end
end
