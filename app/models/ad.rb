class Ad < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :location, presence: true
  validates :category, presence: true
  validates :ad_type, presence: true, inclusion: { in: %w[szukam oferuję], message: "musi być 'szukam' lub 'oferuję'" }
end
