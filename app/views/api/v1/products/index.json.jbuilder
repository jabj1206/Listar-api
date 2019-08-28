json.array! @products do |product|
  json.call(product, :id, :name, :price)
end
