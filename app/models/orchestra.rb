class Orchestra < ApplicationRecord
  has_many :orchestra_managers, dependent: :destroy
  validates :orchestra_name,presence: true
end
