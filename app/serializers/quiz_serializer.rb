class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :category
  validates_presence_of :title, :category
  has_one :user
end
