class Cohort < ApplicationRecord
    has_many :cohorts_students
    has_many :students, through: :cohorts_students
    
    belongs_to :course
    has_one :teacher



end
