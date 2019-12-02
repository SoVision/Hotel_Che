class Meowmeow < ActiveRecord::Migration[6.0]
  def change
    #drop_table :orders
    create_table :orders do |t|
      t.belongs_to :room
      t.belongs_to :client
      t.date :date
      t.integer :during
      t.timestamps
    end
    #drop_table :employees
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
