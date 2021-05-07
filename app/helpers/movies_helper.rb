module MoviesHelper
  def total_gross(movie)
    if movie.total_gross < 225_000_000
      'Flop!'
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end
end
