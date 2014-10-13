json.array!(@old_sounds) do |old_sound|
  json.extract! old_sound, :id, :guid, :locale, :preview, :title, :description, :copyright, :license_id, :original_url, :url, :javascript_id, :stylesheet_id, :sound_id
  json.url old_sound_url(old_sound, format: :json)
end
