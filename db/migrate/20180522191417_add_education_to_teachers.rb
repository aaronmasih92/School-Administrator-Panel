class AddEducationToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :education_completed, :string
  end
end
