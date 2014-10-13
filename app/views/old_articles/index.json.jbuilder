json.array!(@old_articles) do |old_article|
  json.extract! old_article, :id, :guid, :locale, :preview, :section_id, :title, :body, :copyright, :license_id, :original_url, :javascript_id, :stylesheet_id, :article_id
  json.url old_article_url(old_article, format: :json)
end
