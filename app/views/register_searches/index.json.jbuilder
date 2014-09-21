json.array!(@register_searches) do |register_search|
  json.extract! register_search, :id
  json.url register_search_url(register_search, format: :json)
end
