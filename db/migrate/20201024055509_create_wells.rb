class CreateWells < ActiveRecord::Migration[6.0]
  def change
    create_table :wells do |t|
      t.string :name
      t.string :customer
      t.float :northing
      t.float :easting
      t.string :coordinate_system
      t.string :country
      t.string :state
      t.string :county
      t.string :city
      t.string :area
      t.string :field
      t.string :structure

      t.timestamps
    end
  end
end
