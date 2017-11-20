class House < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships

  validates :name, presence: true
  validates :address, presence: true
end
