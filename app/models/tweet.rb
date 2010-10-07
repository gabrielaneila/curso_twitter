class Tweet < ActiveRecord::Base
  belongs_to :user
  validates :user, :presence =>true
  validates :body, :presence =>true, :length =>{:minimum =>1,:maximum =>140}
  has_many :mentions 
  has_many :users, :through => :mentions  
#asociacion a retweets// 1 tweets tiene de 0 a muchos retweets
  has_many :ret_tweents
#asociacion a user, a traves de retweet// 0 a muchos tweets pertenecen a 1 user 
  has_many :users, :through => :retweens
end
