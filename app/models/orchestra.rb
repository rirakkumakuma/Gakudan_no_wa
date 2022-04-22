class Orchestra < ApplicationRecord
  has_many :members, dependent: :destroy
  validates :orchestra_name,presence: true
end
