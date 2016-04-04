class StudentsController < ApplicationController
    before_action :s_logged_in, only: [:edit, :update]
    before_action :correct_student,   only: [:edit, :update]
    
    def new
        @student = Student.new
    end
    
    def show
        @student = Student.find(params[:id])
        @courses = @student.course
    end
    
    def create
       @student = Student.new(student_params)
        if  @student.save
                s_log_in @student
                flash[:success] = "Добро пожаловать в школу казахского языка QazaQ Mekteb"
                redirect_to @student
        else 
            render 'new'
        end
    end
    
    def index
       @student = Student.all
    end

    def student_params
        params.require(:student).permit(:name, :email, :telephone, :course_id, :password, :password_confirmation)
    end
    

end