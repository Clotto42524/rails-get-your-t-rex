class ChangeConfirmationDefaultOnBooking < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :confirmation_status, :boolean, default: false
  end
end
