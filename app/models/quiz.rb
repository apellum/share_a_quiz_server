class Quiz < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates_presence_of :title, :category
end
