class Movie < ApplicationRecord
  validates :director, length: { minimum: 2}
  validates :title, uniqueness: true, length: { minimum: 2}
  validates :plot, presence: true
  validates :year, numericality: true

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map { |genre| genre.name }
  end
end
