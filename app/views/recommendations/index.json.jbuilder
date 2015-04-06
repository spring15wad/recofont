json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :id, :recommendation, :font_stack, :pull_request_url, :team_id
  json.url recommendation_url(recommendation, format: :json)
end
