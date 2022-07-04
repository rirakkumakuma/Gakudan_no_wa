# frozen_string_literal: true

class InstrumentDetail < ApplicationRecord
  belongs_to :member
  belongs_to :instrument
end
