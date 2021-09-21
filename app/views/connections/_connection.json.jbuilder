json.extract! connection, :id, :name, :connection_type, :max_requests, :password, :created_at, :updated_at
json.url connection_url(connection, format: :json)
