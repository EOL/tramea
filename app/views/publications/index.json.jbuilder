json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :url, :appearance_url_template, :details, :year
  json.url publication_url(publication, format: :json)
end
