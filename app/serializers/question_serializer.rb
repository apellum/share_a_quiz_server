class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer
  validates_presence_of :question, :answer
  has_one :quiz
end
