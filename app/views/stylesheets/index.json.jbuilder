json.array!(@stylesheets) do |stylesheet|
  json.extract! stylesheet, :id, :name
  json.url stylesheet_url(stylesheet, format: :json)
end
