class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :play_session
end
