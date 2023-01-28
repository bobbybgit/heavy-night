json.extract! play_session, :id, :collection_id, :slot_number, :max_slots, :user_id, :event_id, :created_at, :updated_at
json.url play_session_url(play_session, format: :json)
