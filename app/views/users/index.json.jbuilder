json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :password_confirmtion
  json.url user_url(user, format: :json)
end
