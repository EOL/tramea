json.array!(@images) do |image|
  json.extract! image, :id, :guid, :locale, :preview, :title, :description, :copyright, :license_id, :original_url, :full_size_url, :crop_url, :thumbnail_url
  json.url image_url(image, format: :json)
end
