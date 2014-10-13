json.array!(@names) do |name|
  json.extract! name, :id, :string, :type, :locale, :preview
  json.url name_url(name, format: :json)
end
