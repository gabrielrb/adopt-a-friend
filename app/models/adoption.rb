class Adoption < ApplicationRecord
  belongs_to :animal

  validates :owner_name, presence: true
end
