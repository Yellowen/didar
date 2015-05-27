module Didar
  class EventType < ActiveRecord::Base
    include  Faalis::Concerns::Authorizable
    has_many :events
  end
end
