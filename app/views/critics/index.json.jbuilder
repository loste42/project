json.array!(@critics) do |critic|
  json.extract! critic, :id, :rating, :comment, :user
  json.url critic_url(critic, format: :json)
end
