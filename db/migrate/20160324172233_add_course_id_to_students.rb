class AddCourseIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :course_id, :string
  end
end
