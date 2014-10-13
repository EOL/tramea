json.array!(@literature_references) do |literature_reference|
  json.extract! literature_reference, :id, :parent_type, :parent_id, :string
  json.url literature_reference_url(literature_reference, format: :json)
end
