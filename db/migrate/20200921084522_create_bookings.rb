class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :begins_at
      t.datetime :ends_at
      t.string :address
      t.string :city
      t.string :zip
      t.integer :price
      t.string :adress_directions
      t.string :city

      t.timestamps
    end
  end
end
