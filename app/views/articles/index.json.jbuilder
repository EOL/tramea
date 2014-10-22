json.array!(@articles) do |article|
  json.extract! article, :id, :guid, :locale, :section_id, :title, :body, :copyright, :license_id, :original_url, :javascript_id, :stylesheet_id
  json.url article_url(article, format: :json)
end
