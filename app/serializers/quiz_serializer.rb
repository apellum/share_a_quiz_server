class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :category
  has_one :user
end
