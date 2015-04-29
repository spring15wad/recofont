Team.create!([
  {project_name: "default", proposal: "none", github_repo: "none"},
])
Recommendation.create!([
  {recommendation: "none", font_stack: "none", pull_request_url: "none", team_id: 1},
])
Example.create!([
  {description: "none", url: "https://example.com", recommendation_id: 1},
])
Attachment.create!([
  {filename: "NA" , mime_type: "image/png", example_id: 1}
])
