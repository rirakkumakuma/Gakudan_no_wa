# frozen_string_literal: true

class Instrument < ApplicationRecord
  has_many :instrument_details, dependent: :destroy
  has_many :members, through: :instrument_details
  belongs_to :orchestra

  validates :name, presence: true
end
