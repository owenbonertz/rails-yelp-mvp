class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(belgian chinese italian french japanese)}


end
