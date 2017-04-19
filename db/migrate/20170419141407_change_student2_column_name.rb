class ChangeStudent2ColumnName < ActiveRecord::Migration[5.0]
  def change
      rename_column :matches, :student_2, :student_2_id
    end
end
