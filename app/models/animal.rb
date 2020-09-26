class Animal < ApplicationRecord
  has_one :adoption, dependent: :destroy

  validates :name, presence: true
  validates :birth_date, presence: true
  validates :category, presence: true
end
