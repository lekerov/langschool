module StudentSessionsHelper
    def s_log_in(student)
        session[:student_id] = student.id
    end
    
    def current_student
        @current_student ||=Student.find_by(id: session[:student_id])
    end
    
    def s_logged_in?
        !current_student.nil?
    end
    
    def s_log_out
        session.delete(:student_id)
        @current_student = nil
    end

end
