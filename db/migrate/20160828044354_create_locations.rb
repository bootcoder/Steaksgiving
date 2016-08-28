class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.string :title
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state

      t.integer :capacity
      t.integer :zip

      t.timestamps null: false

    end
  end
end
