# frozen_string_literal: true

class OrchestraManager < ApplicationRecord
  belongs_to :member
  belongs_to :orchestra

  enum is_active: { active: 0, rest: 1, retire: 2 }
end
