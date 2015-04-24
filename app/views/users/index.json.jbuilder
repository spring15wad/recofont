json.array!(@users) do |user|
  json.extract! user, :id, :username, :uid, :provider, :team_id
  json.url user_url(user, format: :json)
end
