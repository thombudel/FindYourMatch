class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.date :date
      t.integer :student_1
      t.integer :student_2

      t.timestamps
    end
  end
end
