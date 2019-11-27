class Meow2 < ActiveRecord::Migration[6.0]
    def change
      drop_table :rooms
      create_table :rooms do |t|
        t.string :typ
        t.string :places
        t.string :price
        t.belongs_to :employee
        t.timestamps
      end
  end
end
