json.array!(@uris) do |uri|
  json.extract! uri, :id, :string, :locale, :position
  json.url uri_url(uri, format: :json)
end
