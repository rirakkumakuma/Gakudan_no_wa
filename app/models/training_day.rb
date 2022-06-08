class TrainingDay < ApplicationRecord
  belongs_to :orchestra
  has_many :trainings, dependent: :destroy
  has_many :members, through: :trainings
end
