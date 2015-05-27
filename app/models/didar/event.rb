module Didar
  class Event < ActiveRecord::Base
    include  Faalis::Concerns::Authorizable
    belongs_to :event_type

    def as_jsonx(*args)
      { title: self.name,
        start: self.start,
        end: self.end,
        allDay: self.all_day,
        backgroundColor: self.event_type.color,
        borderColor: self.event_type.color
    }
    end
  end
end
