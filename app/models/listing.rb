class Listing < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :use, inclusion: { in: %w(ville montagne sport), message: "%{value} is not a valid category" }
end
