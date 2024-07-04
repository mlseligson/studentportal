class AddStudentRefToEducation < ActiveRecord::Migration[7.1]
  def change
    add_reference :educations, :student, null: false, foreign_key: true
  end
end
