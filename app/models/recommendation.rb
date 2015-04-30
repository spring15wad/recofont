class Recommendation < ActiveRecord::Base

  has_one :team
  has_many :example

  validates :pull_request_url, { allow_blank: "true", format: { with: /\Ahttp/, message: " – A valid URL you must enter." } }

end
