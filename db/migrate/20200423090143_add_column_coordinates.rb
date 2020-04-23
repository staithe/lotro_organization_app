class AddColumnCoordinates < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :coordinates, :string
  end
end
