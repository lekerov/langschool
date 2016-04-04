class StudentSessionsController < ApplicationController
  def new
  end
  
  def create  
    student = Student.find_by(email: params[:student_session][:email].downcase)
    if student && student.authenticate(params[:student_session][:password])
      s_log_in student
      redirect_to student
      else
        flash.now[:danger] = 'Неправильное сочетание e-mail адреса и пароля'
        render 'new'
      end
    end
    
    def destroy
      s_log_out
      redirect_to root_path
    end

end
