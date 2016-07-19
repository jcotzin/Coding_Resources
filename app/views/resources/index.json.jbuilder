json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :description, :rating
  json.url resource_url(resource, format: :json)
end
