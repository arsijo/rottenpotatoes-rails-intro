class Movie < ActiveRecord::Base
  def self.all_ratings()
    return ['G','PG','PG-13','R']
  end
  def self.with_ratings(ratings_list)
    movies = []
    for movie in self.all
      if ratings_list.include?(movie.rating)
        movies << movie
      end
    end
    return movies
  end
end
