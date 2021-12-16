class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :username, :date_of_birth
  
end
