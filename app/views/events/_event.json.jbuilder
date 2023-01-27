json.extract! event, :id, :name, :group_id_id, :venue_id_id, :date, :start_time, :end_time, :event_settings_id_id, :play_session_id_id, :created_at, :updated_at
json.url event_url(event, format: :json)
