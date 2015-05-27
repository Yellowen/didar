json.id @event.id.to_s
json.extract! @event, :name, :description, :start, :end, :url, :all_day

