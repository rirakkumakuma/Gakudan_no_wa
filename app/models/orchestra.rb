class Orchestra < ApplicationRecord
  has_many :orchestra_managers, dependent: :destroy
  has_many :members, through: :orchestra_managers

  validates :orchestra_name,presence: true
end
