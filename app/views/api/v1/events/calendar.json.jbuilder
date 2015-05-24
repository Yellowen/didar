json.array! @events do |event|
  json.id event.id.to_s
  json.title event.name
end
