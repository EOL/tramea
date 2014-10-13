json.array!(@collection_attributions) do |collection_attribution|
  json.extract! collection_attribution, :id, :medium_type, :medium_id, :who, :url, :role_id
  json.url collection_attribution_url(collection_attribution, format: :json)
end
