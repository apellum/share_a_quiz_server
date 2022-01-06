class Quiz < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :questions
  validates_presence_of :title, :category
end
