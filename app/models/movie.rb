class Movie < ActiveRecord::Base

  #### Part 1 ####
  # implement this method. Remeber to exclude [self]
  # (the current movie) from your return value
  def others_by_same_director
    if director.nil?
      return nil
    end
    Movie.where(director: director).where.not(id: id)
  end
end
