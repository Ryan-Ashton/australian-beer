class Beer < ApplicationRecord
  has_many :number_of_people, :dependent => :destroy

  has_many :occasions, through: :number_of_people

  validates :name, :image_url, uniqueness: true
  validates :name, :image_url, presence: true

end
