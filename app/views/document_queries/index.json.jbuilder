json.array!(@document_queries) do |document_query|
  json.extract! document_query, :id, :term
  json.url document_query_url(document_query, format: :json)
end
