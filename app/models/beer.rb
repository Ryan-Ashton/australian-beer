class Beer < ApplicationRecord
  has_many :occasions, dependent: :destroy

  has_many :number_of_persons, through: :doses

  validates :name, uniqueness: true
  validates :name, presence: true

end
