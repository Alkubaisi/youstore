class AddThingsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :from, :date
    add_column :bookings, :when, :date
    add_column :bookings, :price, :integer
  end
end
