class Ad < ApplicationRecord
  belongs_to :user

  validates :title, :description, :location, :category, :ad_type, presence: true
end
