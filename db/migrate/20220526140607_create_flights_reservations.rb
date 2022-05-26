class CreateFlightsReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :flights_reservations do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
