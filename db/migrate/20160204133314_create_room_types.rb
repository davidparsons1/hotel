class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.integer :room_type_id
      t.string :image
      t.boolean :breakfast
      t.integer :hotel_id

      t.timestamps null: false
    end
  end
end
