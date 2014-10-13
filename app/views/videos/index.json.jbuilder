json.array!(@videos) do |video|
  json.extract! video, :id, :guid, :locale, :preview, :title, :description, :copyright, :license_id, :original_url, :url, :javascript_id, :stylesheet_id
  json.url video_url(video, format: :json)
end
