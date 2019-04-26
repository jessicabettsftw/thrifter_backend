class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password
      t.string :email
      t.integer :zip
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
