class Student < ApplicationRecord
    has_many :cohorts_students
  has_many :cohorts, through: :cohorts_students
    
  def student_full_name
  "#{first_name} #{last_name}"
  end        
end
