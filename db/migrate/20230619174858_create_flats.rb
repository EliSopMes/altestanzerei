class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.integer :square_meters
      t.integer :price
      t.boolean :galerie
      t.integer :number_rooms
      t.timestamps
    end
  end
end
