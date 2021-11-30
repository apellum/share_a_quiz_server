class User < ApplicationRecord
    validates_presence_of :name, :email, :password, :date_of_birth
    has_secure_password
end
