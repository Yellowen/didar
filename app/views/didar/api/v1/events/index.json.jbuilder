json.array! @events do |event|
  json.id event.id.to_s
  json.extract! event, :name, :description, :start, :end, :url, :all_day
  json.event_type do
    if event.event_type
      json.id event.event_type.id
      json.name event.event_type.name
    end
  end

end
