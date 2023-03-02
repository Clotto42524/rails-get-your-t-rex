class AddReviewsToDinosaur < ActiveRecord::Migration[7.0]
  def change
    add_reference :dinosaurs, :review, foreign_key: true
  end
end
