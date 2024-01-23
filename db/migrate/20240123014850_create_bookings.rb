class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :start
      t.datetime :end
      t.string :purpose
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
