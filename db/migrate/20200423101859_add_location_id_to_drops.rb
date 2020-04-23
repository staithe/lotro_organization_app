class AddLocationIdToDrops < ActiveRecord::Migration[6.0]
  def change
    add_column :drops, :location_id, :integer
  end
end
