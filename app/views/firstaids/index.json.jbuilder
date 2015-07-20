json.array!(@firstaids) do |firstaid|
  json.extract! firstaid, :id, :emergency_spider, :snake_bite, :spider_bite, :emergency_snake
  json.url firstaid_url(firstaid, format: :json)
end
