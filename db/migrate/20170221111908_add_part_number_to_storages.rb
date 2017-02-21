class AddPartNumberToStorages < ActiveRecord::Migration[5.0]
  def change
    add_column :storages, :price, :integer
  end
end
