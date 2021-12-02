class Question < ApplicationRecord
  belongs_to :quiz
  validates_presence_of :question, :answer
end
