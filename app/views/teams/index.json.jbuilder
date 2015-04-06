json.array!(@teams) do |team|
  json.extract! team, :id, :project_name, :proposal, :github_repo
  json.url team_url(team, format: :json)
end
