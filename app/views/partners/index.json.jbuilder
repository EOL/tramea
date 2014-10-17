json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :full_name, :abbr, :description, :private_notes, :admin_notes, :icon, :url, :small_icon_url
  json.url partner_url(partner, format: :json)
end
