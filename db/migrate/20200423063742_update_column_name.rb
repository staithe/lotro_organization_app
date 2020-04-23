class UpdateColumnName < ActiveRecord::Migration[6.0]
  def change
rename_column :npcs, :kind, :kind_id 
 end
end
