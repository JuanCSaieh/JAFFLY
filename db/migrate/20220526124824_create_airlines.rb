class CreateAirlines < ActiveRecord::Migration[7.0]
  def change
    create_table :airlines do |t|
      t.string :title
      t.string :fs_code

      t.timestamps
    end
  end
end
