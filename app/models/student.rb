class Student < ApplicationRecord
  has_many :experiences, foreign_key: "student_id"
  has_many :educations, foreign_key: "student_id"
  has_one :capstones, foreign_key: "student_id"
end
