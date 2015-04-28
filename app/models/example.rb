class Example < ActiveRecord::Base

  belongs_to :recommendation
  belongs_to :team
  has_one :attachment

end
