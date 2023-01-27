class Event < ApplicationRecord
  belongs_to :group
  belongs_to :venue
  belongs_to :event_settings
  belongs_to :play_session
end
