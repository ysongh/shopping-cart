json.array!(@user) do |user|
  json.extract! user, :id, :username, :password
  json.url customer_url(user, format: :json)
end
