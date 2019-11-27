class Mm < ActiveRecord::Migration[6.0]
  def change
    drop_table :orders
    create_table :orders do |t|
      t.belongs_to :room
      t.belongs_to :client
      t.date :date
      t.integer :during
      t.timestamps
    end
  end
end
