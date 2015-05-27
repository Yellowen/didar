json.array! @events do |event|
  json.title event.name
  json.start event.start
  json.allDay event.all_day
  json.color event.event_type.color
  json.url event.url
end
