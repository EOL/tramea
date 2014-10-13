json.array!(@associations) do |association|
  json.extract! association, :id, :parent_type, :parent_id, :child_type, :child_id, :trusted, :reviewed, :visible, :overview, :position, :rating, :num_ratings
  json.url association_url(association, format: :json)
end
