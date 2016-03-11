class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :guest_id
      t.integer :hotel_id
      t.integer :stars

      t.timestamps null: false
    end
  end
end
