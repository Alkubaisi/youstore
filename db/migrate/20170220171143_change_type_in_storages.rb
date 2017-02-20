class ChangeTypeInStorages < ActiveRecord::Migration[5.0]
  def change
    rename_column :storages, :type, :category
  end
end
