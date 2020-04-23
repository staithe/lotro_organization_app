class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :npcs, :location_id, :integer
  end
end
