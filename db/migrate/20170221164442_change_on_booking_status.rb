class ChangeOnBookingStatus < ActiveRecord::Migration[5.0]
  def change
  remove_column :bookings, :confirmed, :boolean
  add_column :bookings, :status, :string, default: "pending"
  end
end
