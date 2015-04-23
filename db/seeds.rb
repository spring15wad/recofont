Example.create!([
  {url: "https://github.com/intridea/omniauth/blob/master/README.md", file: "", recommendation_id: 1, description: "Foo and Bar."},
  {url: "http://localhost:3000/examples/new", file: "words words words", recommendation_id: 1, description: nil}
])
Recommendation.create!([
  {recommendation: "", font_stack: "font-family: Arial, \"Helvetica Neue\", Helvetica, \"Liberation Sans\", \"DejaVu Sans Condensed\", sans-serif;", pull_request_url: "https://github.com/spring15wad/recofont/pulls", team_id: 1}
])
Team.create!([
  {project_name: "RollingRead", proposal: "https://github.com/spring15wad/metawad/blob/master/beta-app-proposal.md", github_repo: "https://github.com/spring15wad/rollingread"},
  {project_name: "RollingRead", proposal: "https://github.com/spring15wad/metawad/blob/master/beta-app-proposal.md", github_repo: "https://github.com/spring15wad/rollingread"},
  {project_name: "RollingRead", proposal: "https://github.com/spring15wad/metawad/blob/master/beta-app-proposal.md", github_repo: "https://github.com/spring15wad/rollingread"}
])
User.create!([
  {username: "M.J. Freeman", email: "", uid: "5863302", provider: "github", team_id: nil},
  {username: "M.J. Freeman", email: "", uid: "5863302", provider: "github", team_id: 1},
  {username: "Dan", email: "", uid: "8630916", provider: "github", team_id: 1}
])
