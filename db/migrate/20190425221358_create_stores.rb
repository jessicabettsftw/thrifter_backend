class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :phone_number
      t.string :zip
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.integer :latitude
      t.integer :longitude
      t.integer :rating

      t.timestamps
    end
  end
end
