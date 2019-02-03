class TaskItem < ApplicationRecord
  validates :title, :body, presence: true
end