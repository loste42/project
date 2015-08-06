json.array!(@reviews) do |review|
  json.extract! review, :id, :text, :user
  json.url review_url(review, format: :json)
end
