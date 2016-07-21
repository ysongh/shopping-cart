json.array!(@items) do |item|
  json.extract! item, :id, :name, :quantity, :inCart, :price
  json.url item_url(item, format: :json)
end
