json.array!(@snakes) do |snake|
  json.extract! snake, :id
  json.url snake_url(snake, format: :json)
end
