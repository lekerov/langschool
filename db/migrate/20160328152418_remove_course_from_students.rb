class RemoveCourseFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :course
  end
end
