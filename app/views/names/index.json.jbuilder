json.array!(@names) do |name|
  json.extract! name, :id, :string, :type, :locale
  json.url name_url(name, format: :json)
end
