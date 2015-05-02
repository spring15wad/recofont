class Team < ActiveRecord::Base

  has_one :recommendation, inverse_of: :team
  has_many :examples, through: :recommendation
  has_many :users

  validates :github_repo, format: { with: /\Ahttp/, message: ' – A valid URL you must enter.' }
  validates :proposal, format: { with: /\Ahttp/, message: ' – A valid URL you must enter.' }
  
end
