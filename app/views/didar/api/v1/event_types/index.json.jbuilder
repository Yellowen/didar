json.array! @event_types do |event_type|
  json.id event_type.id.to_s
  json.extract! event_type, :name, :description, :color
end
