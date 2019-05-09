class CreateFinds < ActiveRecord::Migration[5.2]
  def change
    create_table :finds do |t|
      t.integer :user_id
      t.integer :store_id
      t.string :photo
      t.money :price
      t.string :brand
      t.text :description

      t.timestamps
    end
  end
end
