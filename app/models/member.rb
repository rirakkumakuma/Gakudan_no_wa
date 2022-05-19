class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable, invite_for: 48.hours

  has_many :orchestra_managers, dependent: :destroy
  has_many :orchestras, through: :orchestra_managers

  has_many :instrument_details, dependent: :destroy
  has_many :instruments, through: :instrument_details

  validates :last_name, :first_name, :last_name_kana, :first_name_kana,
    length:{ minimum: 1, maximum: 100 },presence: true

  enum is_active: { active: 0, inactive: 1, withdraw:2  }

  def full_name
    last_name + first_name
  end

  def full_name_kana
    last_name_kana + first_name_kana
  end
end
