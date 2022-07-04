# frozen_string_literal: true

class Training < ApplicationRecord
  belongs_to :training_day
  belongs_to :member
end
