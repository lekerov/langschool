class Student < ActiveRecord::Base
    before_save { self.email = email.downcase }
    belongs_to :course
    belongs_to :teacher
    
    
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :telephone, presence: false, length: { maximum: 10 }
    validates :teacher_id, presence: false
    validates :course_id, presence: true
    validates :password, presence: true, length: {minimum: 6}
    has_secure_password
    
    
    
end