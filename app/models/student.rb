class Student < ApplicationRecord
  has_many :education, :experience, :skill
  has_one :capstone
end
