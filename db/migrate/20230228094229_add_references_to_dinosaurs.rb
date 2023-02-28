class AddReferencesToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_reference :dinosaurs, :user, null: false, foreign_key: true
  end
end
