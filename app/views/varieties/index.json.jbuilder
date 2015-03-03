json.array!(@varieties) do |variety|
  json.extract! variety, :id
  json.url variety_url(variety, format: :json)
end
