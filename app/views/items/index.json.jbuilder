json.array!(@items) do |item|
  json.extract! item, :id, :name, :qauntity, :price
  json.url item_url(item, format: :json)
end
