json.extract! comment, :id, :author_name, :body, :article_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
