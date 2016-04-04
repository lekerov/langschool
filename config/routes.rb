Rails.application.routes.draw do
 
  get 'student_login'   => 'student_sessions#new'
  post 'student_login'   => 'student_sessions#create'
  delete 'student_logout'  => 'student_sessions#destroy'
  
  get 'teacher_login'   => 'teacher_sessions#new'
  post 'teacher_login'   => 'teacher_sessions#create'
  delete 'teacher_logout'  => 'teacher_sessions#destroy'


  get 'about' => 'static_pages#about'

  root 'static_pages#home'

  get 'help' => 'static_pages#help'

  get 'contacts' => 'static_pages#contacts'
  
  get 'register_student' => 'students#new'
  
  get 'register_teacher' => 'teachers#new'
  
  resources :students
  resources :teachers
  resources :courses

end
