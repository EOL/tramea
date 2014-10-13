json.array!(@secions) do |secion|
  json.extract! secion, :id, :type, :position, :parent_id
  json.url secion_url(secion, format: :json)
end
