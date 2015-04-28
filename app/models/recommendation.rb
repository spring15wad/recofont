class Recommendation < ActiveRecord::Base

  has_one :team
  has_many :example

end
