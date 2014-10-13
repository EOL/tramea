json.array!(@traits) do |trait|
  json.extract! trait, :id, :subject_type, :subject_id, :original_predicate_name, :predicate_uri_id, :value, :text, :object_uri_id, :units, :original_units_uri_id
  json.url trait_url(trait, format: :json)
end
