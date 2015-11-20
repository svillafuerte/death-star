json.array!(@ports) do |port|
  json.extract! port, :id, :name, :type
  json.url port_url(port, format: :json)
end
