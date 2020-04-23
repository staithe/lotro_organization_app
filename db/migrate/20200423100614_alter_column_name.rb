class AlterColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :drops, :descritpion, :description

  end
end
