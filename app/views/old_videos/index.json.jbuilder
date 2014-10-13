json.array!(@old_videos) do |old_video|
  json.extract! old_video, :id, :guid, :locale, :preview, :title, :description, :copyright, :license_id, :original_url, :url, :javascript_id, :stylesheet_id, :video_id
  json.url old_video_url(old_video, format: :json)
end
