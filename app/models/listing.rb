class Listing < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :orders
  validates :user, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, numericality: {greater_than: 0 }, presence: true
  validates :use, inclusion: { in: %w(ville montagne sport), message: "%{value} is not a valid category" }
end
