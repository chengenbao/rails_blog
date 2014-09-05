json.array!(@articles) do |article|
  json.extract! article, :id, :title, :body, :published_at, :excerpt, :location, :user_id
  json.url article_url(article, format: :json)
end
