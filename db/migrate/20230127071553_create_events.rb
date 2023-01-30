class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.references :group, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :event_settings, null: false, foreign_key: true
      t.references :play_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
