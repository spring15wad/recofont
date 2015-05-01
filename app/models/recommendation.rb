class Recommendation < ActiveRecord::Base

  has_one :team, inverse_of: :recommendation
  has_many :examples

  validates :pull_request_url, { allow_blank: "true", format: { with: /\Ahttp/, message: " – A valid URL you must enter." } }

end
