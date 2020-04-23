class AddColumnDescription < ActiveRecord::Migration[6.0]
  def change
    add_column :deeds , :description, :text
  end
end
