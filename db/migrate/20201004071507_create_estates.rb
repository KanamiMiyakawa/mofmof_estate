class CreateEstates < ActiveRecord::Migration[5.2]
  def change
    create_table :estates do |t|
      t.string :name
      t.integer :rent
      t.string :place
      t.integer :age
      t.text :other

      t.timestamps
    end
  end
end
