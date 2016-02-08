class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_type_id
      t.string :floor
      t.boolean :streetview

      t.timestamps null: false
    end
  end
end
