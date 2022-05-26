class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :origin
      t.string :destination
      t.integer :departure_time
      t.integer :arrival_time
      t.references :airline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
