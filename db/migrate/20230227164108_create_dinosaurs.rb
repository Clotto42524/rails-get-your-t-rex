class CreateDinosaurs < ActiveRecord::Migration[7.0]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.text :description
      t.string :age, 

      t.timestamps
    end
  end
end
