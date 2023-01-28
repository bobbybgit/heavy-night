class PlaySession < ApplicationRecord
  belongs_to :collection
  belongs_to :user
  belongs_to :event
end
