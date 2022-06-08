class Orchestra < ApplicationRecord

  has_many :orchestra_managers, dependent: :destroy
  has_many :members, through: :orchestra_managers
  has_many :instruments, dependent: :destroy
  has_many :training_days, dependent: :destroy

  validates :orchestra_name,presence: true
end
