class Listing < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  validates :user, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :use, inclusion: { in: %w(ville montagne sport), message: "%{value} is not a valid category" }
end
