class Team < ActiveRecord::Base

  has_many :recommendations
  has_many :examples, through: :recommendations
  has_many :users
  
end
