class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.datetime :birthday
      t.string :gender
      t.string :phone_number
      t.integer :salary
      t.timestamps
    end
  end
end
