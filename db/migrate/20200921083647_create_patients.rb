class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :zip
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
