class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.integer :game_id
      t.float :weight
      t.float :rating
      t.integer :min_players
      t.integer :max_players
      t.integer :rec_min_players
      t.integer :rec_max_players
      t.string :image
      t.references :player, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.boolean :venue_owned

      t.timestamps
    end
  end
end
