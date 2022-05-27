class AddDefaultReservationToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :defaultReservation, :integer, :default => 1
  end
end
