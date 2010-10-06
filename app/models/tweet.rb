class Tweet < ActiveRecord::Base
  belongs_to :user
  validates :user, :presence =>true
  validates :body, :presence =>true, :length =>{:minimum =>1,:maximum =>140}
  has_many :mentions 
  has_many :users, :through => :mentions  
end
