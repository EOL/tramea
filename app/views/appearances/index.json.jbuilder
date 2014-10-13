json.array!(@appearances) do |appearance|
  json.extract! appearance, :id, :name_id, :publication_id, :page, :url_snippet
  json.url appearance_url(appearance, format: :json)
end
