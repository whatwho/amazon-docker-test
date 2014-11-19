json.array!(@artists) do |artist|
  json.extract! artist, :id, :title
  json.url artist_url(artist, format: :json)
end
