class Orchestra < ApplicationRecord
  has_many :members, dependent: :destroy
end
