class AddValueToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :value, :integer
    add_column :reservations, :paymentStatus, :boolean, :default => false
    change_column :reservations, :status, :boolean,  :default => false
  end
end
