class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.string :companion
      t.string :phone
      t.string :kids

      t.timestamps
    end
  end
end
