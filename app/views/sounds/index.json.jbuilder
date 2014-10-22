json.array!(@sounds) do |sound|
  json.extract! sound, :id, :guid, :locale, :title, :description, :copyright, :license_id, :original_url, :url, :javascript_id, :stylesheet_id
  json.url sound_url(sound, format: :json)
end
