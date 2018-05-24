class DropTableCreateJoinTableStudentCohorts < ActiveRecord::Migration[5.2]
  def change
      drop_table :create_join_table_student_cohorts
      drop_table :create_join_table_teacher_cohorts
      drop_table :admins
      drop_table :cohorts_teachers
  end
end
