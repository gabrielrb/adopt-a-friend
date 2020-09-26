class Animal < ApplicationRecord
  has_one :adoption, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :birth_date, presence: true
  validates :category, presence: true
end
