class User < ApplicationRecord
    has_many :quizzes
    validates_presence_of :name, :email, :password, :date_of_birth
    validates :email, uniqueness: {case_sensitive: false}
    has_secure_password
end
