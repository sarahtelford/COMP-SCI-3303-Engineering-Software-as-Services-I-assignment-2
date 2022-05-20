class Movie < ApplicationRecord
  def self.all_ratings
    %w[G PG PG-13 R]
  end

  def self.find_by_title movie_title
    director = Movie.find_by(title: movie_title).director
    return nil if director.blank? or director.nil?
    Movie.where(director: director).pluck(:title)
  end
end
