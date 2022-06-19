class OrchestraManager < ApplicationRecord
  belongs_to :member
  belongs_to :orchestra

  enum is_active: { active: 0, inactive: 1, withdraw:2  }

end
