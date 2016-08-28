class CreateSteakNights < ActiveRecord::Migration
  def change
    create_table :steak_nights do |t|

      t.string :title

      t.integer :capacity
      t.integer :cost

      t.datetime :happening_at

      t.references :location

      t.timestamps null: false
    end
  end
end
