class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :guest_first_name
      t.string :guest_last_name
      t.string :guest_email
      t.string :guest_phone
      t.string :guest_address
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
