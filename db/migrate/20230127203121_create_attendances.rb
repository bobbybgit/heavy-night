class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :play_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end