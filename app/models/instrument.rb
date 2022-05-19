class Instrument < ApplicationRecord

  has_many :instrument_details, dependent: :destroy
  has_many :members, through: :instrument_details
  belongs_to :orchestra

end
