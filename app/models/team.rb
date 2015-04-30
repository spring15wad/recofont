class Team < ActiveRecord::Base

  has_many :recommendations
  has_many :examples, through: :recommendations
  has_many :users

  validates :github_repo, format: { with: /\Ahttp/, message: ' – A valid URL you must enter.' }
  validates :proposal, format: { with: /\Ahttp/, message: ' – A valid URL you must enter.' }
  
end
