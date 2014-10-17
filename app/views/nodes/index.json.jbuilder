json.array!(@nodes) do |node|
  json.extract! node, :id, :partner_id, :parent_id, :original_id
  json.url node_url(node, format: :json)
end
