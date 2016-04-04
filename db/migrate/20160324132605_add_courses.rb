class AddCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course
      t.string :stundent_id
    end
  end
end