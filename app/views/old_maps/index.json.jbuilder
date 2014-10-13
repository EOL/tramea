json.array!(@old_maps) do |old_map|
  json.extract! old_map, :id, :guid, :locale, :preview, :title, :description, :copyright, :license_id, :original_url, :full_size_url, :crop_url, :thumbnail_url, :javascript_id, :stylesheet_id, :map_id
  json.url old_map_url(old_map, format: :json)
end
