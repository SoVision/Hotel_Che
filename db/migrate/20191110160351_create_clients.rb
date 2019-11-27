class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.datetime :birthday
      t.string :gender
      t.string :address
      t.string :phone_number
      t.timestamps
    end
  end
end
