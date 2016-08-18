json.array!(@events) do |event|
  json.extract! event, :id, :title, :place, :time, :description
  json.url event_url(event, format: :json)
end
