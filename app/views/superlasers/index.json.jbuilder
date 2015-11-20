json.array!(@superlasers) do |superlaser|
  json.extract! superlaser, :id, :name
  json.url superlaser_url(superlaser, format: :json)
end
