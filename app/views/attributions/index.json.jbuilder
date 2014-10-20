json.array!(@attributions) do |attribution|
  json.extract! attribution, :id, :medium_type, :medium_id, :who, :url, :role_id
  json.url attribution_url(attribution, format: :json)
end
