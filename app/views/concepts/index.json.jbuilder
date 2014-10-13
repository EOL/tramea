json.array!(@concepts) do |concept|
  json.extract! concept, :id, :source_id, :parent_id, :original_id
  json.url concept_url(concept, format: :json)
end
