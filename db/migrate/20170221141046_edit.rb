class Edit < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :lsat_name, :last_name
  end
end
