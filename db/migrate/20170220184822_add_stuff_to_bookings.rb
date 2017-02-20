class AddStuffToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :time_wanted, :string
    add_column :bookings, :confirmed, :boolean
  end
end
