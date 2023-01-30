class RemovePlayerIdFromCollections < ActiveRecord::Migration[7.0]
  def change
    remove_column :collections, :player_id 
  end
end
