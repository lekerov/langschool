module TeacherSessionsHelper
    def t_log_in(teacher)
        session[:teacher_id] = teacher.id
    end
    
    def current_teacher
        @current_teacher ||=Teacher.find_by(id: session[:teacher_id])
    end
    
    def t_logged_in?
        !current_teacher.nil?
    end
    
    def t_log_out
        session.delete(:teacher_id)
        @current_teacher = nil
    end
       
end
