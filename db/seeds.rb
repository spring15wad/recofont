Attachment.create!([
  {filename: "NA.png" , mime_type: "image/png", example_id: "2"}
])
Example.create!([
  {description: "none", url: "https://example.com", recommendation_id: 1},
  {description: "Foo and Bar.", url: "https://github.com/intridea/omniauth/blob/master/README.md", recommendation_id: 2 }
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
  {username: "mfreema5", uid: "5863302", provider: "github", team_id: 2},
  {username: "Dan", uid: "8630916", provider: "github", team_id: 2}
])
