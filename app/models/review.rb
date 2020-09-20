class Review < ApplicationRecord
  belongs_to :profile

  validates_associated :profile
  validates :value, inclusion: 1..5

end
