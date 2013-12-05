class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :zip
      t.string :city
      t.string :state
      t.float :lat
      t.float :long

      t.timestamps
    end
    add_index :locations, :zip
  end
end
