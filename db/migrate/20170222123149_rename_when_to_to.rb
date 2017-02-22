class RenameWhenToTo < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :when, :to
  end
end
