class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable, invite_for: 48.hours

  has_many :orchestra_managers, dependent: :destroy
  has_many :orchestras, through: :orchestra_managers

  has_many :instrument_details, dependent: :destroy
  has_many :instruments, through: :instrument_details

  has_many :trainings, dependent: :destroy
  has_many :training_days, through: :trainings

  validates :last_name, :first_name, :last_name_kana, :first_name_kana,
            length: { minimum: 1, maximum: 100 }, presence: true

  def full_name
    last_name + first_name
  end

  def full_name_kana
    last_name_kana + first_name_kana
  end
end
