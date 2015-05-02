class Example < ActiveRecord::Base

  belongs_to :recommendation
  has_one :team, through: :recommendation
  has_one :attachment

  validates :example_url, { allow_blank: "true", format: { with: /\Ahttp/, message: " – A valid URL you must enter." } }

end
