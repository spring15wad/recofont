json.array!(@examples) do |example|
  json.extract! example, :id, :url, :file, :recommendation_id
  json.url example_url(example, format: :json)
end
