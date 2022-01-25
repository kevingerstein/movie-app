class Movie < ApplicationRecord
  validates :director, length: { minimum: 2}
  validates :title, uniqueness: true, length: { minimum: 2}
  validates :plot, presence: true
  validates :year, numericality: true

  has_many :actors
end
