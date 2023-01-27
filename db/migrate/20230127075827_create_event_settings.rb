class CreateEventSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_settings do |t|
      t.integer :min_per_group
      t.integer :max_per_group
      t.boolean :use_rec_player_count
      t.integer :max_game_length
      t.integer :min_game_length
      t.integer :max_weight
      t.integer :min_weight

      t.timestamps
    end
  end
end
