json.array!(@datasets) do |dataset|
  json.extract! dataset, :id, :partner_id, :name, :full_name, :abbr, :description, :private_notes, :admin_notes, :url, :license_id
  json.url dataset_url(dataset, format: :json)
end
