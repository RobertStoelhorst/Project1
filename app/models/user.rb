class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :jokes
  has_many :likes, :dependent => :destroy 
end
