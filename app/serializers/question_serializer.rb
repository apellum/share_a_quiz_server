class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer
  has_one :quiz
end
