class OrchestraManager < ApplicationRecord
  belongs_to :member
  belongs_to :orchestra

  def full_name
    last_name + first_name
  end

  def full_name_kana
    last_name_kana + first_name_kana
  end
end
