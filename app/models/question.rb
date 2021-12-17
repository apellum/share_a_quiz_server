class Question < ApplicationRecord
  belongs_to :quiz, dependent: :destroy
  validates_presence_of :question, :answer
end
