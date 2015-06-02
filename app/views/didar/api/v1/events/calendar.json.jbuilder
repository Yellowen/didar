json.array! @events do |event|
  json.title event.name
  json.start event.start
  json.allDay event.all_day
  json.backgroundColor '#cdcdcd'
  json.borderColor '#cdcdcd'
  json.url event.url
end
