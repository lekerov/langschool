class TeachersController < ApplicationController
    def new
        @teacher = Teacher.new
    end
    
    def show
        @teacher = Teacher.find(params[:id])
        
    end
    
    def create
       @teacher = Teacher.new(teacher_params)
            if @teacher.save
                t_log_in @teacher
                flash[:success] = "Добро пожаловать в школу казахского языка QazaQ Mekteb"
                redirect_to @teacher
            
            else 
                render 'new'
        end
    end
    
    def index
       @teachers = Teacher.all 
    end
    
    def teacher_params
        params.require(:teacher).permit(:name, :email, :telephone, :password, :password_confirmation)
    end
end