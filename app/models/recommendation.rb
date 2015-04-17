class Recommendation < ActiveRecord::Base

  has_one :team
  has_one :example

end
