class Animal < ApplicationRecord
  has_one :adoption, dependent: :destroy
  has_one_attached :photo

  extend FriendlyId
  friendly_id :name

  validates :name, presence: true,
                   format: { with: /\A[a-z ]+\z/, message: 'Only downcase letters without special character' },
                   length: { maximum: 100 }
  validates :birth_date, presence: true,
                         format: { with: /\A\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])\z/,
                                   message: 'Needs to follow the format: yyyy-mm-dd' }
  validates :category, presence: true,
                       format: { with: /\A(dog|cat|other)\z/, message: 'You need to choose between dog, cat or other.' }
  validates :photo, presence: true
end
