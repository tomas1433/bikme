json.extract! user, :id, :first, :last, :created_at, :updated_at
json.url user_url(user, format: :json)