class User < ActiveRecord::Base
  include TheRoleUserModel
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  def has_bid?(item)
    item.bids.where(:user_id => self.id) != 0 
  end
end
