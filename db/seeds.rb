Example.create!([
  {url: "none", file: "", recommendation_id: 1, description: "none"},
  {url: "https://github.com/intridea/omniauth/blob/master/README.md", file: "", recommendation_id: 2, description: "Foo and Bar."}
])
Recommendation.create!([
  {recommendation: "none", font_stack: "none", pull_request_url: "none", team_id: 1},
  {recommendation: "", font_stack: "font-family: Arial, \"Helvetica Neue\", Helvetica, \"Liberation Sans\", \"DejaVu Sans Condensed\", sans-serif;", pull_request_url: "https://github.com/spring15wad/recofont/pulls", team_id: 2}
])
Team.create!([
  {project_name: "default", proposal: "none", github_repo: "none"},
  {project_name: "RollingRead", proposal: "https://github.com/spring15wad/metawad/blob/master/beta-app-proposal.md", github_repo: "https://github.com/spring15wad/rollingread"}
])
User.create!([
  {username: "mfreema5", uid: "5863302", provider: "github", team_id: 2}
  {username: "Dan", uid: "8630916", provider: "github", team_id: 2}
])
