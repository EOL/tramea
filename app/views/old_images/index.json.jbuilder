json.array!(@old_images) do |old_image|
  json.extract! old_image, :id, :guid, :locale, :preview, :title, :description, :copyright, :string, :license_id, :original_url, :full_size_url, :crop_url, :thumbnail_url, :image_id
  json.url old_image_url(old_image, format: :json)
end
