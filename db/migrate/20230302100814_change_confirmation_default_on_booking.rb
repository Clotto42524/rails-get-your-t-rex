class ChangeConfirmationDefaultOnBooking < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :confirmation_status, nil
  end
end
