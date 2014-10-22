json.array!(@maps) do |map|
  json.extract! map, :id, :guid, :locale, :title, :description, :copyright, :license_id, :original_url, :full_size_url, :crop_url, :thumbnail_url, :javascript_id, :stylesheet_id
  json.url map_url(map, format: :json)
end
