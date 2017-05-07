class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :airline
      t.integer :flightnumber
      t.string :origin
      t.string :destination
      t.time :SchedDepLocal
      t.string :depterminal
      t.string :depgate
      t.string :aircrafttype
      t.string :tailnumber
      t.time :outgatelocal
      t.time :inairlocal
      t.integer :cancelled
      t.integer :acttaxitimedep
      t.integer :minlatedep

      t.timestamps
    end
  end
end
