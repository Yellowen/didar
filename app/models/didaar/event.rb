class Event < ActiveRecord::Base
  include  Faalis::Concerns::Authorizable
  belongs_to :event_type

end
