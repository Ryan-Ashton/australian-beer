class Occasion < ApplicationRecord
  has_many :number_of_persons

  validates :name, uniqueness: true
  validates :name, presence: true
end
