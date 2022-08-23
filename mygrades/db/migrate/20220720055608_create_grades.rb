class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.integer :score
      t.integer :unit
      t.string :subject

      t.timestamps
    end
  end
end
