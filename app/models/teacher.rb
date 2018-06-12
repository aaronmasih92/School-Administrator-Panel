class Teacher < ApplicationRecord
    belongs_to :cohort
    
    def teacher_full_name
 "#{first_name} #{last_name}"
end        
end
