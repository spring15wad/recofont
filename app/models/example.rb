class Example < ActiveRecord::Base

  belongs_to :recommendation
  belongs_to :team
  has_one :attachment

  validates :url, format: { with: /\Ahttp/, message: ' – A valid URL you must enter.' }


end
