json.array!(@licenses) do |license|
  json.extract! license, :id, :type, :icon
  json.url license_url(license, format: :json)
end
