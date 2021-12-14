class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :username, :password_digest, :date_of_birth
  
end
