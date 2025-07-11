class User < ApplicationRecord
  has_many :ads

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, 
    presence: true, 
    uniqueness: true,
    length: { in: 3..25 },
    format: { with: /\A[a-zA-Z0-9_]+\z/, message: "może zawierać tylko litery, cyfry i podkreślniki" }

end
