# frozen_string_literal: true

class TrainingDay < ApplicationRecord
  belongs_to :orchestra
  has_many :trainings, dependent: :destroy
  has_many :members, through: :trainings

  validates :training_day, :title, :body, presence: true


  def training_date
    training_day.strftime('%Y年%-m月%-d日 %H時%M分')
  end
end
