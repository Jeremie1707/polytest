class CreateReferrals < ActiveRecord::Migration[5.2]
  def change
    create_table :referrals do |t|
      t.string :organization
      t.string :pin
      t.string :address
      t.string :zip
      t.string :city
      t.string :adress_directions
      t.string :contact_name

      t.timestamps
    end
  end
end
