class Quiz < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :category
end
