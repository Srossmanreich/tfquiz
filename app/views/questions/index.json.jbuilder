json.array!(@questions) do |question|
  json.extract! question, :id, :t, :f, :topic_id, :domain, :public_comments, :private_comments, :active
  json.url question_url(question, format: :json)
end
