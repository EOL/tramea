json.array!(@javascripts) do |javascript|
  json.extract! javascript, :id, :name
  json.url javascript_url(javascript, format: :json)
end
