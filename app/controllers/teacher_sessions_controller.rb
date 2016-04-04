class TeacherSessionsController < ApplicationController
  def new
  end
  
  def create
    teacher = Teacher.find_by(email: params[:teacher_session][:email].downcase)
    if teacher && teacher.authenticate(params[:teacher_session][:password])
      t_log_in teacher
      redirect_to teacher
      else
        flash.now[:danger] = 'Неправельное сочетание e-mail адреса и пароля'
        render 'new'
      end
    end
  
  def destroy
    t_log_out
    redirect_to root_path
  end
  
end