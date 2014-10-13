json.array!(@sources) do |source|
  json.extract! source, :id, :name, :full_name, :abbr, :description, :private_notes, :admin_notes, :icon, :url, :small_icon_url
  json.url source_url(source, format: :json)
end
