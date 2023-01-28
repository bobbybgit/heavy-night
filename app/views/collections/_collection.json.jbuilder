json.extract! collection, :id, :game_id, :weight, :rating, :min_players, :max_players, :rec_min_players, :rec_max_players, :image, :player_id, :venue_id, :venue_owned, :created_at, :updated_at
json.url collection_url(collection, format: :json)
