class CreateContactUs < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :name
      t.text :enquiry

      t.timestamps
    end
  end
end
