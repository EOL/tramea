json.array!(@links) do |link|
  json.extract! link, :id, :partner_id, :name, :url, :position
  json.url link_url(link, format: :json)
end
