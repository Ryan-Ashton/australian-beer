class NumberOfPerson < ApplicationRecord
  belongs_to :beer
  belongs_to :occasion
end
