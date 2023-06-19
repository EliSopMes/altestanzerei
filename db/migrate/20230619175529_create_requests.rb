class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.integer :number_guests
      t.date :from
      t.date :to
      t.references :flat, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :house_number
      t.string :postal_code
      t.string :city
      t.string :phone
      t.string :email
      t.text :message
      t.timestamps
    end
  end
end
