class TrainingDay < ApplicationRecord
  belongs_to :orchestra
  has_many :trainings, dependent: :destroy
  has_many :members, through: :trainings

  def training_date
    training_day.strftime('%Y年%-m月%-d日 %H時%M分')
    # @weeks = ["日","月","火","水","木","金","土"]
    # @num = training_day.strftime("%w").to_i
    # @week = @weeks[num]
  end
end
