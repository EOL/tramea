json.array!(@nodes) do |node|
  json.extract! node, :id, :source_id, :parent_id, :original_id
  json.url node_url(node, format: :json)
end
