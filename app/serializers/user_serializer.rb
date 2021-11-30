class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :username, :password, :date_of_birth
end
