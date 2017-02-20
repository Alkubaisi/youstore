class AddStuffToStorages < ActiveRecord::Migration[5.0]
  def change
    add_column :storages, :type, :string
    add_column :storages, :term, :string
  end
end
