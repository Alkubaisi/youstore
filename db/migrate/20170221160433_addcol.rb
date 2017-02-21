class Addcol < ActiveRecord::Migration[5.0]
  def change
    add_column :storages, :city, :string
  end
end
