class CreatePlaySessions < ActiveRecord::Migration[7.0]
  def change
    create_table :play_sessions do |t|
      t.references :collection, null: false, foreign_key: true
      t.integer :slot_number
      t.integer :max_slots
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
