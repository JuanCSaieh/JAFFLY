class AddNameToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :name, :string
    change_column :reservations, :value, :integer,  :default => 0
  end
end
