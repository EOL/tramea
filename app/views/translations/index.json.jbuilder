json.array!(@translations) do |translation|
  json.extract! translation, :id, :of_medium_type, :of_medium_id, :to_medium_type, :to_medium_id
  json.url translation_url(translation, format: :json)
end
