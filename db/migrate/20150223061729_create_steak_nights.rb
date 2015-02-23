class CreateSteakNights < ActiveRecord::Migration
  def change
    create_table :steak_nights do |t|
      t.string :title
      t.date :night
      t.integer :max_guests
      t.integer :cover

      t.timestamps null: false
    end
  end
end
