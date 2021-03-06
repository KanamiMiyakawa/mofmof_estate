class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :station_name
      t.integer :time
      t.references :estate, foreign_key: true

      t.timestamps
    end
  end
end
