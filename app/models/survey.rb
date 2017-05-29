class Survey < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  validates :teacher_id, :uniqueness =>true
end
