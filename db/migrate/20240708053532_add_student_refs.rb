class AddStudentRefs < ActiveRecord::Migration[7.1]
  def change
    add_reference :experiences, :student, null: false, foreign_key: true
    add_reference :skills, :student, null: false, foreign_key: true
    add_reference :capstones, :student, null: false, foreign_key: true
  end
end
