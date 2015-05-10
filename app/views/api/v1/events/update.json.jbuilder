json.id @event.id.to_s
json.extract! @event, :name, :description, :start, :end, :url, :all_day

json.partial! 'faalis/relations/belongs_to', object: @event.event_type, :name => :event_type, :fields => [:id, :name]

