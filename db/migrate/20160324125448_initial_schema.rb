class InitialSchema < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :teacher_id
      t.string :course
    end
      
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :telephone
    
    end
    
    create_table :grades do |t|
      t.string :student_id
      t.string :grade
      t.string :course_id
      t.timestamps
    
    end
    
      
  end
end
