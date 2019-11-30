class Mm < ActiveRecord::Migration[6.0]
  def change
    drop_table :clients
    create_table :clients do |t|
      t.string :name
      t.datetime :birthday
      t.string :gender
      t.string :address
      t.string :phone_number
      t.timestamps
    end
    create_table :rooms do |t|
      t.string :typ
      t.string :places
      t.string :price
      t.belongs_to :employee
      t.timestamps
    end
  end
end
