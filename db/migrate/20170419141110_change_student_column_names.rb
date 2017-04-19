class ChangeStudentColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :matches, :student_1, :student_1_id
  end
end
